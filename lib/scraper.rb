#require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  #RETURN AN ARRAY OF HASHES
  def self.scrape_index_page(index_url) #is responsible for scraping the index page that lists all of the students
    doc = Nokogiri::HTML(open(index_url))
    array = []
    doc.css(".student-card").each do |e|
      hash = {}
      hash[:name] = e.css(".student-name").text
      hash[:location] = e.css(".student-location").text
      hash[:profile_url] = e.css("a").first['href']
      # l = doc.css('.student-card a').map {|link| link['href']}[0]
      array << hash
    end
    array
  end

  def self.scrape_profile_page(profile_url) #is responsible for scraping an individual student's profile page to get further information about that student.
    doc = Nokogiri::HTML(open(profile_url))
    array = []
    binding.pry
    doc.css(".main-wrapper.profile .vitals-container").each do |e|
      hash = {}
      hash[:twitter] = e.css(".social-icon-container")
      hash[:linkedin] = e.css(".social-icon-container")
      hash[:github] = e.css(".social-icon-container")
      hash[:blog] =
      hash[:profile_quote] = e.css(".profile-quote")
      hash[:bio] =
      array << hash
    end
    array
  end

end
