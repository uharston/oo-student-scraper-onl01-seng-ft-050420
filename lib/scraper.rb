#require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  #RETURN AN ARRAY OF HASHES
  def self.scrape_index_page(index_url) #is responsible for scraping the index page that lists all of the students
    doc = Nokogiri::HTML(open(index_url))
    array = []
    doc.css(".student-card")each do |e|
      hash = {}
      hash[:name] = e.css(".card-text-container .student-name").text.strip
      hash[:location] = e.css(".card-text-container .student-location").text.strip
      hash[:profile_url] = e.css(".student-card a")['href']
      array << hash
    end
    array
  end
  # 
  # 
  # 
  # 
  # 
  # 
  # # profiles = doc.css(".card-text-container .student-name").text.strip
  # #   binding.pry
  # # student = Student.new
  # # name = doc.css(".card-text-container .student-name").text.strip
  # # location = doc.css(".card-text-container .student-location") .text.strip
  # # profile_url = doc.css(".student-card a")['href']
  # 
  # 
  # 
  #   profiles.each {|p| puts p.text.strip}
  # 
  # end

  # .roster-cards-container
  # .student-card


  def self.scrape_profile_page(profile_url) #is responsible for scraping an individual student's profile page to get further information about that student.

  end

end
