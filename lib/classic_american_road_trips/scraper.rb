class ClassicAmericanRoadTrips::Scraper
  def scrape_page
    page = Nokogiri::HTML(open("https://www.roadtripusa.com/"))
    # puts page
    binding.pry
     # page.css(".col-md-4").css("h2").text

#this returns route names, except also has the empty ones
    page.css(".col-md-4").each do |r|
      puts r.css("h2").text

      end

        page.css(".col-md-4").each do |r|
         puts r.css("p").text
       end

       page.css(".col-md-4").each do |r|
         r.css("p").each.with_index do | p, i|
           puts "#{i}. #{p}"
        end
      end


      p_array = []
      page.css(".col-md-4").each do |r|
        r.css("p").each.with_index do | p, i|
          puts "#{i}. #{p}"
          if i == 1
            p_array << p.text
          end
       end
     end
            # if i == 1
            #   puts p.css("p").text
            # end
    end
    # puts routes
  end
end
