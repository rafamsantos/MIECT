import os
from Crypto.Cipher import ARC4

cipher = ARC4.new("chave")
cryptogram = cipher.encrypt("Text")
os.write(1, cryptogram )

decipher = ARC4.new("chave")
decrypted = decipher.decrypt( cryptogram )
print( decrypted.decode('utf-8') )
