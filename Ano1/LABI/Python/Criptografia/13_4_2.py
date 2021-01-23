from Crypto.Cipher import AES

key = '1234567890abcdef'
cipher = AES.new ( key )
print(cipher.block_size)

print(cipher.mode)
