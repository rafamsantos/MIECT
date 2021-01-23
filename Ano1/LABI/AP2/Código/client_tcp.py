#!/usr/bin/python3

import random
import os
import sys
import socket
import json
import base64
from Crypto.Hash import SHA256
from Crypto.Cipher import AES
import csv
import time
from common_comm import send_dict, recv_dict, sendrecv_dict


#
# JSON message structures already defined:
#
# 1 - Create an ordering process
#     request: { op: NEW, proc: <proc_id string> }
#     response: { error: <string> } (empty string if no error)
#
# 2 - List clients associated to an ordering process
#     request: { op: LIST, proc: <proc_id string> }
#     response: { ids: <list>, error: <string> } (empty string if no error)
#
# 3 - Start an ordering process
#     request: { op: START, proc: <proc_id string> }
#     response: { <to be defined> }
#
# 4 - Add a client to an ordering process
#     request: { op: ADD, proc: <proc_id string>, id: <client_id string> }
#     response: { error: <string> } (empty string if no error)

def manager( server, proc ):
    msg = { 'op': 'NEW', 'proc': proc }
    resp = sendrecv_dict( server, msg )

    print( resp )

    if resp['error'] != '':
        print( 'Server error: %s' % (resp['error']) )
        sys.exit( 2 )

    while True:
        print( 'Commands for ordering on process "' + proc + '"' )
        print( '\tL or l - list the clients' )
        print( '\tS or s - start ordering' )
        print( '\tQ or q - quit' )

        while True:
            cmd = input( 'prompt: ' )

            if cmd in ['l',  'L']:
                msg = { 'op':'LIST', 'proc': proc }
                resp = sendrecv_dict( server, msg )

                if resp['error'] == '':
                    if len(resp[ 'ids' ]) == 0:
                        print( 'No clients yet!' )
                    else:
                        print( '%d clients:' % (len(resp['ids'])) )
                        for name in resp['ids']:
                            print( '\t%s' % (name) )
                else:
                    print( 'Error: ' + resp['error'] )
                    sys.exit( 2 )
            elif cmd in ['s', 'S']:
                msg = { 'op':'START', 'proc': proc }
                resp = sendrecv_dict( server, msg )
                slist = recv_dict( server )    #Recebe a lista com a ordem final
                print(slist)
                return resp
            elif cmd in ['q', 'Q']:
                sys.exit( 0 )
            else:
                print( "???" )

def client( server, proc, client ):
    request = {'op': 'ADD', 'proc': proc, 'id': client}
    resp = sendrecv_dict(server, request)

    if resp['error'] != '':
        print('Server error: ' + resp['error'])
        sys.exit(2)

    # Wait for server orders and show the ordering outcome at the end

    # recebe lista do servidor
    lista = recv_dict(server)

    # atrasa 1sec o codigo a seguir para nao ficar tudo baralhado
    time.sleep(0.1)

    # codifica a lista
    iterations = len(lista)
    keys = []

    # cria chave aleatoria
    key = os.urandom(16)
    key = base64.b64encode(key)

    key_a = AES.new(key, AES.MODE_ECB)

    # codificar a lista
    data = []
    for i in range(iterations):
        d = bytes("%16s" % (lista[i]), 'utf-8')

        d = key_a.encrypt(d)
        # print(len(d))
        data.append(d)

    # baralhar lista
    random.shuffle(data)

    # b64
    for i in range(iterations):
        st = base64.b64encode(data[i])
        data[i] = st.decode('utf-8')

    # enviar a lista ao server
    send_dict(server, data)

    # recebe lista, retira um e envia a lista sem elemento escolhido
    data1 = recv_dict(server)
    Ci = data1.pop(0)

    send_dict(server, data1)

    #
    # comprometer com o numero de odem que retirou
    #
    # envia o elemento escolhido
    send_dict(server, Ci)

    # bit commitment
    Bi = SHA256.new()
    Bi.update(bytes(Ci, 'utf-8'))
    Bi.update(key)
    Bi_digest = Bi.digest()

    Bi_digest = base64.b64encode(Bi_digest)
    send_dict(server, Bi_digest.decode('utf-8'))

    dic = recv_dict(server)

    # Compara Ci recebido pelo server com o valor que escolheu e Bi com o bit Commitment
    continua = 1
    if dic[client]['Ci'] != Ci or dic[client]['Bi'] != Bi_digest.decode('utf-8'):
        print("sao diferentes no client " + client)
        server.close()
        continua = -1

    send_dict(server, continua)

    # Enviar as keys
    send_dict(server, key.decode('utf-8'))

    # recebe lista com as keys
    chaves = recv_dict(server)

    new_chaves = []
    for i in range(iterations):
        new_chaves.append(chaves[i].encode('utf-8'))

    # Recebe o trio e verifica se esta correto
    trio = recv_dict(server)

    if trio[client]['Ci'] != Ci or trio[client]['Bi'] != Bi_digest.decode('utf-8') or trio[client]['K'] != key.decode('utf-8'):
        print("ocorreu um erro no participante " +client)

    n_Ci = base64.b64decode( Ci )

    # Decifrar valores de Ci
    for i in range(iterations):
        final_key = AES.new(new_chaves[i], AES.MODE_ECB)
        msg = final_key.decrypt( n_Ci )

    f_C = int(str(msg, 'utf-8'))
    send_dict(server, f_C)

    ordem_final = recv_dict( server )
    print(ordem_final)

def dump_csv( dic ):
    # Dump a CSV to a file from data received from the server
    ids = []
    for i in dic.keys():
        ids.append(i)

    for i in range( len(ids) ):
        dic[ids[i]]['ID'] = ids[i]

    fout = open('report.csv', 'w')
    fieldnames = ['ID', 'Ci', 'Bi', 'K', 'Nº de ordem']
    w = csv.DictWriter(fout, fieldnames = fieldnames)
    w.writeheader()
    for i in range( len( dic.keys() ) ):
        w.writerow({'ID':dic[ids[i]]['ID'], 'Ci':dic[ids[i]]['Ci'], 'Bi':dic[ids[i]]['Bi'], 'K':dic[ids[i]]['K'], 'Nº de ordem':dic[ids[i]]['Nº de ordem']})

    fout.close()

def main():
    # Validate the program parameters
    porto = int(sys.argv[3])

    # Set the server's TCP address from the command args

    address = (( socket.gethostname(), porto ))

    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(address)

    # Set the process_id and the client_id from the command args
    process_id = sys.argv[1]
    client_id = sys.argv[2]

    if client_id == "_":
        dump_csv(manager(s, process_id))
    else:
        client(s, process_id, client_id)



if __name__ == "__main__":
    main()



