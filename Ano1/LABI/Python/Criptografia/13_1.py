import hashlib

h = hashlib.sha1( )
h.update("A long sentence broken in two halves".encode('utf-8') )
h.update("broken in two halves".encode('utf-8') )
print(h.hexdigest( ) )
