import webapp2

page="""
	<h1>Enter some text to ROT13:</h1>
	<textfield>
	<input type="submit">
"""

class MainPage(webapp2.RequestHandler):
	def write_form(self):
		self.response.out.write(page)

app = webapp2.WSGIApplication([('/', MainPage)], debug=True)