class ClassicAmericanRoadTrips::Scraper

  def scrape_page #WORKS
    page = Nokogiri::HTML(open("https://www.roadtripusa.com/"))
    page.css(".col-md-4").each do |r|
      unless r.css("h2").text.empty?
        # binding.pry
        ClassicAmericanRoadTrips::Route.new_from_index_page(r)
      end
    end

  end
end
