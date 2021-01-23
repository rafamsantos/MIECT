from PIL import Image
import sqlite3 as sql
import cherrypy, requests, json, hashlib
import os.path, sys

class Root(object):
	#interligação de todas as páginas
	@cherrypy.expose
	def index(self):
		return open('html/main.html', 'r')				
	
	@cherrypy.expose
	def criadores(self):
		return open('html/criadores.html', 'r')
	
	@cherrypy.expose
	def dynamic2(self):
		return open('html/page2.html', 'r')
