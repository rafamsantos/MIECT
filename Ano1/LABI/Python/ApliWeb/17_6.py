import cherrypy

class Node(object):
          @cherrypy.expose
          def index(self):
                    return"Eu sou o índice do Node(Node.index)"

          @cherrypy.expose
          def page(self):
                    return"you sou um método do Node(Node.page)"

class Root(object):
          def __init__(self):
                    self.node = Node( )
                    self.actions = Actions( )

          @cherrypy.expose
          def index(self):
                     return "Eu sou um índice do Root(Root.index)"

          @cherrypy.expose
          def page(self):
                      return"Eu sou um método do Root(Root.page)"
          
          @cherrypy.expose
          def form(self):
                    cherrypy.response.headers["Content-Type"] = "text/html"
                    return open("formulario.html", "r").read( )

class Actions(object):
          @cherrypy.expose
          def doLogin(self, username = None, password = None):
                    return "TODO: verificar as credenciais do utilizador "+username
          
if __name__ == "__main__":
          cherrypy.tree.mount(Root(),"/")
          cherrypy.server.start()
