import socket

def main():
       udp_s = socket.socket( socket.AF_INET, socket.SOCK_DGRAM )
       udp_s.bind( ('127.0.0.1', 1234) )

       while True:
              data, addr = udp_s.recvfrom( 4096 )
              print( str(addr) )
              udp_s.sendto( data.upper(), addr )
if __name__ == "__main__":
       main()
