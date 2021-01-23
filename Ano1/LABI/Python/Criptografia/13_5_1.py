from Crypto.PublicKey import RSA

keypair = RSA.generate( 1024 )
fout = open ( "keypair.pm", "wb" )
kp = keypair.exportKey( "PEM","senha" )
fout.write(kp)
fout.close( )
