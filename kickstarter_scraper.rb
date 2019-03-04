require 'pry'
require 'nokogiri'

html = File.read('fixtures/kickstarter.html')

kickstarter = Nokogiri::HTML(html)

project = kickstarter.css("li.project.grid_4").first
binding.pry

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text

