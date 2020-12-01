class ClassicAmericanRoadTrips::CLI
  attr_accessor :number

  def call
    puts ""
    puts "Welcome to Classic American Road Trips."
    puts ""
    ClassicAmericanRoadTrips::Scraper.new.scrape_page
    run
  end

  def run
    ClassicAmericanRoadTrips::Route.all.each_with_index do |r, i| #WORKS
      puts "  #{i + 1}. #{r.name}"
    end
    puts ""
    puts "Please type the number of the trip you'd like to learn more about."
    puts ""
    get_and_output
  end

  def get_and_output
    @number = gets.strip.to_i
    if @number > 0 && @number < 12
      puts " -----------------------------------------------"
      puts ""
      puts ""
      puts "You picked number #{@number}: The #{ClassicAmericanRoadTrips::Route.all[@number - 1].name} Route"
      puts ""
      puts "  Overview:"
      puts ""
      puts "#{ClassicAmericanRoadTrips::Route.all[@number - 1].description}"
      puts ""
      puts ""
      puts "Some highlights along this route include:"
      puts ""
      ClassicAmericanRoadTrips::Route.all[@number - 1].highlights.each do |h|
        puts "  -#{h.strip}"
      end
      puts ""
      puts " -----------------------------------------------"
      puts ""
      puts "Would you like to learn more about this route? (y/n)"
      puts ""
      learn_more

    else
      puts ""
      puts "Please enter a number from the list."
      get_and_output
    end
  end

  def learn_more
    reply = gets.strip
    if reply == ("y" || "Y")
      more_info
    elsif reply == ("n" || "N")
      next_step
    else
      puts "I didn't catch that. Please type y or n."
      learn_more
    end
  end

  def next_step
    puts ""
    puts " -----------------------------------------------"
    puts ""
    puts "What would you like to do now?"
    puts ""
    puts "1. See the list of routes again."
    puts "2. Exit"
    puts ""
    puts "Please type the number that represents your choice."
    puts ""

    answer = gets.strip.to_i
    case answer
      when 1
        run
      when 2
        puts "Thank you for visiting. Bon voyage!"
    end

  end

  def more_info
    puts " -----------------------------------------------"
    puts ""
    puts ""
    puts "To learn more about this route, take a look at this excellent quidebook: #{ClassicAmericanRoadTrips::Route.all[@number - 1].guidebook_name}"
    puts "Check it out at: #{ClassicAmericanRoadTrips::Route.all[@number - 1].guidebook_url}"
    puts ""

    next_step
  end


end
