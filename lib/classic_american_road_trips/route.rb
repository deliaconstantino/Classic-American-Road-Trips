class ClassicAmericanRoadTrips::Route
  attr_accessor :name, :distance, :start_point, :end_point, :url, :related_guidebook, :description

  def new_from_index_page(r)
    #is called from an iterative method scraper class and assigns the basic info to each route:
    r = self.new
    @name = r.css("h2").text
    r.css("p").each.with_index do | p, i|
      case i
        when 1
          @paragraph = p.text
        when 2
          @highlights = p.text
        end
      @guidebook = p.css("em").text
    end
    #name
    #paragraph
    #url??
    #related quidebook
    #highlights
  end

  def more_info(url)
    #assigns additional info to each route after going a page deeper:
    #start_point & end_point
    #distance
    #longer description?? --probably skip
  end
end
