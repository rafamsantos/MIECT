from PIL import Image
import sys


def main(fname):
          im = Image.open(fname)
          new_im = im.convert("L")
          new_im.save('bw'+fname)

if __name__ == "__main__":
    main(sys.argv[1])
