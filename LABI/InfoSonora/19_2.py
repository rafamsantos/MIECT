import wave
import sys

def main(argv):
          wf = wave.open(argv[1],"rb")
          print("Número de canais : "+wf.getnchannels())
          print("Tamamho do sample"+wf.getsampwidth())
          print("Numero de frames "+wf.getnframes())
          wf.close();
