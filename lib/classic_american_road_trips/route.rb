class ClassicAmericanRoadTrips::Route
  attr_accessor :name, :highlights, :description, :guidebook

  @@all = []

  def initialize(name = nil, highlights = nil, description = nil, guidebook = nil)
    @name = name
    @highlights = highlights
    @description = description
    @guidebook = guidebook
    @@all << self
  end

  def self.new_from_index_page(r) #WORKS
    #is called from an iterative method scraper class and assigns the basic info to each route:
    route = ClassicAmericanRoadTrips::Route.new
    route.name = r.css("h2").text
    route.description = r.css("p")[1].text
    route.highlights = r.css("p")[2].css("a").map { |a| a.text }
    route.guidebook = r.css("p")[3].css("em").text
  end


  def self.all  #WORKS
    @@all
  end
end






#with scraping
  # def new_from_index_page(r)
  #   #is called from an iterative method scraper class and assigns the basic info to each route:
  #   ClassicAmericanRoadTrips::Route.new
  #   @name = r.css("h2").text
  #   r.css("p").each.with_index do | p, i|
  #     case i
  #       when 1
  #         @description = p.text
  #       when 2
  #         p.css("a").each do |a|
  #           @highlights << a.text
  #       end
  #     end
  #     @guidebook = p.css("em").text
  #   end
  #
  # end
#
#   def initialize(name = nil, highlights = [], description = nil, guidebook = nil)
#     @name = name
#     @highlights << highlights
#     @description = description
#     @guidebook = guidebook
#     @@all << self
#   end
#
#
#
#
#   def self.all
#     @@all
#   end
#
#   def more_info(url)
#     #assigns additional info to each route after going a page deeper:
#     #start_point & end_point
#     #distance
#     #longer description?? --probably skip
#   end
# end
