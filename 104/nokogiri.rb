require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.skillcrush.com'))

puts doc.methods
