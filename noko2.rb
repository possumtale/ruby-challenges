require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
puts doc.css('.components-item').children

list = doc.css('.components-data')
 
list.each do |n|
    puts n
end