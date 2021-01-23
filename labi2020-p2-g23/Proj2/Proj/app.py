import os
import cherrypy

PATH = os.path.abspath(os.path.dirname(__file__))

class Root(object):
	def __init__(self):
		self.image = Image()
		self.comment = Comment()
		
	@cherrypy.expose
	def index(self):
		return open ("index.html", "r").read()
			
class Image(object):
	#@cherrypy.expose()
	pass
	
class Comment(object):
	#@cherrypy.expose()
	#@cherrypy.tools.json_out()
	pass
		
conf = {
		"/": {
			"tools.staticdir.on": True,
			"tools.staticdir.dir": os.path.join(PATH)
			}
		} 
		

cherrypy.server.socket_port = 10023
cherrypy.config.update({'server.socket_port': 10023,})
cherrypy.server.socket_host = "0.0.0.0"
cherrypy.tree.mount(Root(), "/", conf)
cherrypy.engine.start()
cherrypy.engine.block()
