require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
puts page.css('.components-list')
