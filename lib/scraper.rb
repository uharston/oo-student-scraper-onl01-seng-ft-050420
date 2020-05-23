#require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url) #is responsible for scraping the index page that lists all of the students
    # html = open('https://learn-co-curriculum.github.io/student-scraper-test-page/index.html#') #open-uri native method
    doc = Nokogiri::HTML(open(index_url))
    profiles = doc.css(".card-text-container .student-name").text.strip
      binding.pry
    # student = Student.new
    name = doc.css(".card-text-container .student-name").text.strip
    location = doc.css(".card-text-container .student-location").text.strip
    profile_url = doc.css(".student-card a")['href']
    
    # student.name = doc.css(".card-text-container .student-name").text.strip
    # student.location = doc.css(".card-text-container .student-location").text.strip
    # student.profile_url = doc.css(".student-card a")['href']








    profiles.each {|p| puts p.text.strip}

  end

  # .roster-cards-container
  # .student-card


  def self.scrape_profile_page(profile_url) #is responsible for scraping an individual student's profile page to get further information about that student.

  end

end
