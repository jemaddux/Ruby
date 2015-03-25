require 'rubygems'
require 'nokogiri' #required nokogiri gem
require 'open-uri' #lets you open remote sites like http://wikipedia.org

page = Nokogiri::HTML(open("http://en.wikipedia.org"))
#puts page.class # => Nokogiri::HTML::Document
pageArray = page.split(" ")
puts pageArray