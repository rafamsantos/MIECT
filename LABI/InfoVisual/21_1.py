from PIL import Image
from Pil import ExifTags
import sys

def main(fname):
          im = Image .open(f.name)

          width, height = im.size

          print("Largura: %d px" % width)
          print("Altura: %d px"% height)
          print("Formato %s " % im.format)

          tags = im.getexif()

          for k,v in tags.items():
                    print(str(ExifTags.TAGS[k])+" : "+ str(v))

main(sys.argv[1])
