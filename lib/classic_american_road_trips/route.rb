class ClassicAmericanRoadTrips::Route
  attr_accessor :name, :highlights, :description, :guidebook, :distance, :start_point, :end_point, :url

  @@all = []

  def new_from_index_page(r)
    #is called from an iterative method scraper class and assigns the basic info to each route:
    ClassicAmericanRoadTrips::Route.new
    @name = r.css("h2").text
    r.css("p").each.with_index do | p, i|
      case i
        when 1
          @paragraph = p.text
        when 2
          p.css("a").each do |a|
            @highlights << a.text
        end
      end
      @guidebook = p.css("em").text
    end

  end

  def initialize(name = nil, highlights = [], description = nil, guidebook = nil)
    @name = name
    @highlights << highlights
    @description = description
    @guidebook = guidebook
    @@all << self
  end

   #  highlights = []
   #  page.css(".col-md-4").each do |r|
   #   r.css("p").each.with_index do | p, i|
   #     puts "NEW ROUTE!!!!"
   #     case i
   #     when 1
   #       puts "paragraph: #{p.text}"
   #     when 2
   #       p.css("a").each do |a|
   #         highlights << a.text
   #  end
   #     puts p.css("em").text
   #   end
   # end
   #
    #name
    #paragraph
    #url??
    #related quidebook
    #highlights


  def self.all
    @@all
  end

  def more_info(url)
    #assigns additional info to each route after going a page deeper:
    #start_point & end_point
    #distance
    #longer description?? --probably skip
  end
end
