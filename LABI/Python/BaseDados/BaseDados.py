import sqlite3 as sql
import sys

def main(argv):
          db = sql.connect(argv[1])
          result = db.execute("SELECT*FROM empresas1")
          for row in result:
                    print(row)
          db.close()
if __name__ == "__main__":
          main(sys.argv)
