class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    binding.pry
    student_hash.each_pair do |key, value|
      send("#{key}=",value)
    end
    @@all << self
  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end
end

# @name = :name
# @location = :location
# @twitter = :twitter
# @linkedin = :linkedin
# @github = :github
# @blog = :blog
# @profile_quoute = :profile_quote
# @bio = :bio
# @profile_url = :profile_url
