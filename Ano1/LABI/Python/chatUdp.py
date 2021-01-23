import socket
def main():
       udp_s = socket.socket( socket.AF_INET, socket.SOCK_DGRAM )
       udp_s.bind( ('0.0.0.0', 1234) )
       clients = []
       while True:
              data, addr = udp_s.recvfrom( 4096 )
              print( 'Remetente: ',str(addr) )

              if addr not in clients:
                     clients.append( addr )

              print( 'Bytes recebidos: ', str(data) )
              print( 'Texto recebido: ', str(data, 'utf8') )

              upper = str(data, 'utf8').upper()

              for c in clients:
                     udp_s.sendto( bytes(upper, 'utf8'), c )
if __name__ == "__main__":
       main()
