class ClassicAmericanRoadTrips::Scraper
  # def scrape_page
  #   routes = ["Pacific Coast", "Border to Border", "The Road to Nowhere", "The Great River Road", "Appalachian Trail", "Atlantic Coast", "The Great Northern", "The Oregon Trail", "The Loneliest Road", "Southern Pacific", "Route 66"]
  #     routes.each do |r|
  #       puts r
  #   end
  # end
  def scrape_page
    # binding.pry
    page = Nokogiri::HTML(open("https://www.roadtripusa.com/"))
    page.css(".col-md-4").each do |r|
      ClassicAmericanRoadTrips::Route.new_from_index_page(r)

    end
  end
end




# scrape page method:
