import time
import psutil

def main():
       t = time.time()
       cpu = psutil.cpu_percent( interval=1 )
       print( "%f %f" % (t, cpu) )

if __name__ == "__main":
       main()
