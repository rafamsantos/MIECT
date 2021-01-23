import hashlib

h.hashlib.md5()
h.update("A long sentence ".encode('utf-8'))
h.update("broken in two halves".encode('utf-8'))
print(h.hexdigest()) 

