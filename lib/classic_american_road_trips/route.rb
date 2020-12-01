class ClassicAmericanRoadTrips::Route
  attr_accessor :name, :highlights, :description, :guidebook_name, :guidebook_url

  @@all = []

  def initialize(name = nil, highlights = nil, description = nil, guidebook_name = nil, guidebook_url = nil)
    @name = name
    @highlights = highlights
    @description = description
    @guidebook_name = guidebook_name
    @guidebook_url = @guidebook_url
    @@all << self
  end

  def self.new_from_index_page(r)
    route = ClassicAmericanRoadTrips::Route.new
    route.name = r.css("h2").text
    route.description = r.css("p")[1].text
    route.highlights = r.css("p")[2].css("a").map { |a| a.text }
    route.guidebook_name = r.css("p")[3].css("a").text
    route.guidebook_url = r.css("p")[3].css("a").first["href"]
  end


  def self.all
    @@all
  end
end
