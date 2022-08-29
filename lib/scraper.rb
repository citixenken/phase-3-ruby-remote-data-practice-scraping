require 'nokogiri' #allows us to parse HTML and collect data from it
require 'open-uri' #allows us to programatically make HTTP requests

html = URI.open("https://flatironschool.com/")
# html = URI.open("https://bookhub-app.netlify.app/")
# html = URI.open("https://www.codingkenya.com/")

# puts html

#converting HTML returned into a NodeSet => nested nodes(tree elements containing parent and children elements)
doc = Nokogiri::HTML(html)
# puts doc.css('h1.heading-financier').text.strip #cleanup extra whitespace
# puts doc.css('div.card-body > h3').text
courses = doc.css('div.card-body > h3')

courses.map { |course| puts course.text.strip }