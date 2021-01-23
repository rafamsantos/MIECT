from PIL import Image
from PIL import ImageFilter
import sys


def main(fname):
          
          # Create an image object
          image = Image.open(fname)

          # Find the edges by applying the filter ImageFilter.FIND_EDGES
          imageWithEdges = image.filter(ImageFilter.FIND_EDGES)
          new_im = imageWithEdges.save('edge'+fname)
if __name__ == "__main__":
    main(sys.argv[1])
