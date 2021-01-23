
import cherrypy

class Root(object):
	#interligação de todas as 6 páginas
	@cherrypy.expose
	def index(self):
                return open("html/index.html", "r").read( )			
	
	@cherrypy.expose
	def dynamic1(self):
                return open("html/criadores.html", "r").read( )
	
	@cherrypy.expose
	def dynamic2(self):
		return open("html/perfil.html", "r").read( )
	
	@cherrypy.expose
	def put(self):
		return open("html/publicar.html", "r").read( )	
		
				
	
if __name__ == "__main__":
          cherrypy.tree.mount(Root(),"/")
          cherrypy.server.start()
