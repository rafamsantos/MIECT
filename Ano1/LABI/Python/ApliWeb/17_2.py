import cherrypy

class HelloWorld(object):

                    @cherrypy.expose
                    def index(self):
                              host = cherrypy.request.headers["host"]
                              return "You have sucessfully reached "+ host
                    
cherrypy.tree.mount(HelloWorld(), "/")
cherrypy.server.start()
