from struct import pack
from math import sin, pi
import wave
import sys

def main(argv):
          rate = 44100
          wv=wave.open(argv[1], "w")
          wv.setparams((1,2 , rate,0 , "NONE", "not compressed") )           
          amplitude = 10000            
          data = [ ]
          
          tones= { "1":(697 ,1029),\
                           "2" : (697,1336) ,\
                           "3":( 697, 1477 ),\
                           "4":(770,1209),\
                           "5":( 770, 1336 ),\
                           "6":( 770 , 1477 ), \
                           "7":(852,1209),\
                           "8":(852,1336),\
                           "9":(852, 1477),\
                           "*":(941,1209),\
                           "0":(941, 1336),\
                           "#":(941 ,1477),\
                           "A":(697,1633),\
                           "B":(770,1633),\
                           "C":(852, 1633),\
                           "D":(941, 1633)
                          }
          number = "964864746"
          for n in number:
                    freq_a = tones[n][0]
                    freq_b = tones[n][1]
                    
                    for i in range(0, int(rate* 0.040)):
                              data.append(  amplitude*sin(2*pi*freq_a*i/rate) +amplitude*sin(2*pi*freq_b*i/rate))

                    for i in range(0, int(rate*0.040)):
                              data.append( 0 )

          wvData = [ ]
          for v in data :
                    wvData+=pack("h",int(v))
          wv.writeframes(bytearray(wvData))
          wv.close()

main(sys.argv)
