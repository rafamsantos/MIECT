import socket

def main():
          tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
          tcp_s.bind( ("0.0.0.0", 1234) )
          tcp_s.listen()
          
          c, addr = tcp_s.accept( )
          print( 'Interlocutor: ',str(addr) )
          while True:
                    data = c.recv(4096)
                    print( 'Bytes recebidos: ', str(data) )
                    print( 'Texto recebido: ',str(data, 'utf-8')  )
                    upper = str(data, 'utf-8').upper( )
                    c.send( bytes(upper, 'utf-8'))
          
if __name__ == "__main__":
          main()
