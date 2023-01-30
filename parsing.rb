require 'open-uri'
require 'nokogiri'

html_content = URI.open('https://www.etsy.com/search?q=macbook+air+m1+case&ref=auto-1').read
doc = Nokogiri::HTML.parse(html_content)

doc.search('.wt-grid .v2-listing-card__info .v2-listing-card__title').each_with_index do |element, index|
  puts "#{index + 1}. #{element.text.strip}"
end
