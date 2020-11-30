class ClassicAmericanRoadTrips::Route
  attr_accessor :name, :distance, :start_point, :end_point, :url, :related_guidebook, :description

  def create_from_index_page
    #is called from an iterative method scraper class and assigns the basic info to each route:
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
