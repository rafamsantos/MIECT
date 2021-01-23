import cherrypy

class HelloWorld(object):
          @cherrypy.expose
          def index(self):
                    host = cherrypy.request.headers["Host"]
                    return "you have sucessfully reached " + host
cherrypy.tree.mount(HelloWorld(),"/")
cherrypy.server.start()
