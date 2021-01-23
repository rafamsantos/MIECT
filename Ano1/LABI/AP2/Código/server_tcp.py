#!/usr/bin/python3

import sys
import socket
import select
import json
import base64
from Crypto.Hash import SHA256
from Crypto.Cipher import AES
import random
import time

from common_comm import send_dict, recv_dict, sendrecv_dict

procs = {}


#
# Handler do pedido de criação de um processo de ordenação
#
def new_process( process_id, sock ):

    if process_id in procs.keys():
        return { 'error':'Sorting process already exists' }
    else:
        procs[process_id] = { 'endpoint': sock, 'ids': {} }
        return { 'error':'' }

#
# Handler do pedido de inclusão de um novo candidato no processo de ordenação
#
def new_client( process_id, client_id, sock ):

    if process_id in procs:
        proc = procs[process_id]  # Selected sorting process

        if client_id in proc['ids']: # Client already belongs to it?
            return { 'error':'Client already registered in sorting process' }
        else:                        # New client
            proc['ids'][client_id] = { 'endpoint': sock }
            return { 'error':'' }

    else:
        return { 'error':'Sorting process no found' }

#
# Handler do pedido de listagem de clientes inscritos num processo de ordenação
#
def list_clients( process_id, sock ):
    if process_id in procs:
        proc = procs[process_id]  # Selected sorting process

        ids = []
        for i in proc['ids']:
            ids.append( i )

        return { 'ids':ids, 'error':'' }
    else:
        return { 'error':'Sorting process no found' }

#
# Handler do pedido de inicio da ordenação
#
def start_sorting( process_id, sock ):
    if process_id not in procs.keys():
        return { 'error':'Sorting process not found' }
    else:
        proc = procs[process_id]     # Selected sorting process
        if sock != proc['endpoint']: # Registered address is not the requester
            return { 'error':'Not authorized, you are not the process manager' }
        else:
            return run_sorting( proc )

def clean_proc( process_id ):
    clients = procs[process_id]['ids']

    for c in clients.values():
        c['endpoint'].close()

    del(procs[process_id])

# tem de retornar a sorted list
def dump_proc( sorted_list ):
    return sorted_list

def clean_client ( sock ):
    for k,v in procs.items():
        if v['endpoint'] == sock:
            clean_proc ( k )
            return

def run_sorting( proc ):
    # cria uma lista com os ids
    global final_key
    clients = []
    lista = []
    data1 = []
    keys = []

    #cria lista com os nomes dos clients por ordem de conexao
    for key in proc['ids'].keys():
        clients.append(key)

    iterations = len(clients)

    # cria lista com numeros de ordem de 1 a N
    for i in range( 1, iterations + 1 ):
        lista.append( i )

    # envia a lista a um dos clients e recebe uma lista
    for i in range( iterations ):
        send_dict( proc['ids'][clients[i]]['endpoint'], lista )
        data1 = recv_dict( proc['ids'][clients[i]]['endpoint'] )

    # envia lista cifrada e baralhada por todos os cients a um de cada vez
    # e recebe a lista sem o elemento que o client escolheu
    for i in range( iterations ):
        send_dict( proc['ids'][clients[i]]['endpoint'], data1 )
        data1 = recv_dict( proc['ids'][clients[i]]['endpoint'] )

    # recebe o bit commitment e o elemento escolhido anteriormente
    B = []
    C = []
    for i in range( iterations ):
        Ci = recv_dict( proc['ids'][clients[i]]['endpoint'] )
        C.append( Ci )
        Bi = recv_dict( proc['ids'][clients[i]]['endpoint'] )
        B.append( Bi )

    # associar o nome de cada client com o par(Ci, Bi)
    dic = {}
    for i in range( iterations ):
        dic[clients[i]] = {"Ci": C[i], "Bi": B[i]}

    dic_h = {}
    cont = []
    for i in range(iterations):
        send_dict( proc['ids'][clients[i]]['endpoint'], dic )
        continua = recv_dict( proc['ids'][clients[i]]['endpoint'] )
        cont.append( continua )

    # Verifica se algum client saiu(se saiu acabar o programa)
    for i in cont:
        if i != 1:
            print("Alguém saiu do processo... terminando")
            sys.exit(0)

    #Pedir a chave de cada client
    keys = []
    for i in range( iterations ):
        key = recv_dict( proc['ids'][clients[i]]['endpoint'] )
        keys.append( key )

    # Criar os trios(Ci, Bi, Ki) e enviar para o client
    for i in range( iterations ):
        dic[clients[i]]["K"] = keys[i]

    for i in range( iterations ):
        send_dict( proc['ids'][clients[i]]['endpoint'], keys )
        send_dict( proc['ids'][clients[i]]['endpoint'], dic )

    final_list = []
    for i in range( iterations ):
        l = recv_dict( proc['ids'][clients[i]]['endpoint'] )
        final_list.append( l )

    # Desencript a lista final
    l1 = []
    for i in range( iterations ):
        l1.append( base64.b64decode( C[i] ) )

    l2 = []
    for i in range( iterations ):
        final_key = keys[i].encode('utf-8')
        final_key = AES.new( final_key, AES.MODE_ECB )

    for n in range( iterations ):
        final_sol = final_key.decrypt( l1[n] )
        l2.append( int(str(final_sol, 'utf-8')) )

    # Associar id ao numero de ordem obtido
    d = []
    for i in range( iterations ):
        d.append( {'id': clients[i], 'Nº de ordem': l2[i]} )

    # cria lista ordenada por nº de ordem com os ids associados
    s_list = sorted( d, key = lambda d:d['Nº de ordem'])
    sorted_list = []
    for i in range( iterations ):
        sorted_list.append( s_list[i]['id'] )
    print(sorted_list)

    # Adicionar o nº de ordem ao trio
    for i in range(iterations):
        dic[clients[i]]["Nº de ordem"] = l2[i]

    # Enviar ordem final ao client
    for i in range(iterations):
        send_dict( proc['ids'][clients[i]]['endpoint'], sorted_list )

    return dic, sorted_list

def new_msg( client ):
    request = recv_dict( client )
    print( 'Command: %s' % (str(request)) )

    if request['op'] == 'NEW':     # Create a new sorting process
        resp = new_process( request['proc'], client )
        send_dict(client, resp)
    elif request['op'] == 'ADD':   # Add a client to a sorting process
        resp = new_client( request['proc'], request['id'], client )
        send_dict(client, resp)
    elif request['op'] == 'LIST':   # List clients in a sorting process
        resp = list_clients( request['proc'], client )
        send_dict(client, resp)
    elif request['op'] == 'START': # Start the sorting process
        dic, sorted_list = start_sorting( request['proc'], client )
        resp = dump_proc( dic )
        send_dict(client, resp)
        send_dict(client, sorted_list)
        clean_proc( request['proc'] )
    else:
        resp = { 'error':'Wrong request "' + request['op'] + '"' }



def main():
    # Validate the program parameters

    # Set the server's TCP address from the command args
    porto = int(sys.argv[1])

    address = (socket.gethostname(), porto)

    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind(address)
    s.listen()

    clients = []

    while True:
        try:
            available = select.select([s] + clients, [], [])[0]
        except ValueError:
            # Sockets may have been closed, check for that
            for c in clients:
                if c.fileno() == -1:  # closed
                    clients.remove(c)
            continue  # Reiterate select

        for c in available:
            # New client?
            if c is s:
                new, addr = s.accept()
                clients.append(new)

            # Or a client
            else:
                # See if client sent a message
                if len(c.recv(1, socket.MSG_PEEK)) != 0:
                    new_msg(c)
                else:  # or just disconnected
                    clients.remove(c)
                    clean_client(c)
                    c.close()
                    break  # Reiterate select



if __name__ == "__main__":
        main()


