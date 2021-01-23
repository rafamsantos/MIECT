from PIL import Image
from PIL import ImageFilter
import sys

def main(fname):
          im = Image.open(fname)
          blurred_img = im.filter(ImageFilter.BoxBlur(5))
         
          new_im= blurred_img.save('blur'+fname)

if __name__ == "__main__":
    main(sys.argv[1])
