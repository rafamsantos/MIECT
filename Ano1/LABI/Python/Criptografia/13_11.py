from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP

f = open ( "keypair.pm", "r" )
keypair = RSA.importKey( f.read( ), "senha" )
cipher = PKCS1_OAEP.new( keypair )
#Encryption w/ publick key
x= cipher.encrypt( "the quick brown fox jumps over the lazy dog".encode('utf-8') )
#Decryption with private key
print( cipher.decrypt( x ).decode('utf-8') )
