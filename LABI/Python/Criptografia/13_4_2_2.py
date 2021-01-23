from Crypto.Cipher import AES

key = '1234567890abcdef'
cipher = AES.new( key )
x = cipher.encrypt("texto para cifra")
print(cipher.decrypt( x ) )
