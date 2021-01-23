import xml.etree.ElementTree as xml

def GENERATEXML(fileName):
          root = xml.Element("Costumers")
          s1 = xml.Element("Costumer")
          root.append(c1)
          
          type1 = xml.SubElement(c1, "Place")
          type1.text="UK"

          Amount1 = xml.SubELement(c1, "Amount")
          Amount1.text = "4500"

          tree=xml.ElementTree(root)
          with open (fileName,"wb") as files:
                    trre.write(files)
                    
if __name__ == "__main__" :
          GENERATEXML("Customers4.xml")
