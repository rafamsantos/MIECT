import socket

def main():
       tcp_s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
       tcp_s.bind( ('0.0.0.0', 1234) )
       tcp_s.listen()

       while True:
              #Espera por cliente
              print( 'Espera cliente' )
              c, addr = tcp_s.accept()
              print( 'Interlocutor: ',str(addr) )
              while True:
                     #Trata do cliente
                     data = c.recv( 4096 )
                     if len(data) == 0:
                            break
                     print( 'Bytes recebidos: ', str(data) )
                     print( 'Texto recebido: ', str(data, 'ut8') )
                     upper = str(data, 'utf8').upper()
                     c.send( bytes(upper, 'utf8') )
              print( 'Cliente desapareceu' )       

if __name__ == "__main__":
       main()
