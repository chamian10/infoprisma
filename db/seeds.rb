# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'rubygems'
require 'nokogiri'
require 'open-uri'

#All information mix ------------------------------------------------------------

site_url ='http://www.infobae.com/'
page_contents = Nokogiri::HTML(open(site_url))

@titles = []

@hot_title=page_contents.xpath("//a[@class='entry-title url']").inner_text

page_contents.xpath("//a[@class='entry-title url']").each do |x|

  #@titles.push("Noticia : "+x.text)

  @titles.push(x.text)

end

#for i in 1..@titles.size
  for i in 1..10

  News.create(title: @titles[i])

  end

#End All Information mix---------------------------------------------------------