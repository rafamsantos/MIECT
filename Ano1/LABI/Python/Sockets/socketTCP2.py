import socket

def main():
          tcp_s = socket.socket(  socket.AF_INET, socket.SOCK_STREAM )
          tcp_s.bind( ('0.0.0.0', 1234 ) )
          tcp_s.listen()

          while True:
                    #espera por cliente
                    print( 'Espera cliente ... ' )
                    c, addr = tcp_s = tcp_s.accept( )
                    print(' Interlocutor : ', str(addr) )

                    while True:
                              #trata do cliente
                              data = c.recv( 4096 )
                              if len(data) == 0:
                                        break
                              
                              print('Texto recebido : ', str(data, 'utf-8') )
                              upper = str(data, 'utf-8').upper()
                              c.send( bytes(upper, 'utf-8') )
                              
                    print( 'Cliente desapareceu ... ' )
                    c.close()
if __name__ == "__main__":
          main( )
