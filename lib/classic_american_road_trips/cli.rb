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
    puts ""
    puts "You picked number #{@number}: The #{ClassicAmericanRoadTrips::Route.all[@number - 1].name} Route"
    puts ""
    # puts ClassicAmericanRoadTrips::Route.all[@number - 1].name
    puts "Overview:"
    puts "  #{ClassicAmericanRoadTrips::Route.all[@number - 1].description}"
    puts ""
    puts ""
    puts "Some highlights this route are:"
    puts ""
    puts "  #{ClassicAmericanRoadTrips::Route.all[@number - 1].highlights}"
    ClassicAmericanRoadTrips::Route.all[@number - 1].highlights.each do |h|
      puts "  #{h}"
    end
    puts ""
    next_step
  end

  def next_step
    # puts ClassicAmericanRoadTrips::Route.all[@number - 1].description
    # puts ""
    # puts "Some highlights this route are:"
    # puts ClassicAmericanRoadTrips::Route.all[@number - 1].highlights
    # puts ""
    puts "What would you like to do now?"
    puts ""
    puts "1. See where you can learn more about this route."
    puts ""
    puts "2. See the list of routes again."
    puts ""
    puts "3. Exit."
    puts ""
    puts "Please type the number that represents your choice."
    puts ""

    answer = gets.strip.to_i
    case answer
      when 1
      more_info
      when 2
        run
      when 3
        puts "Thank you for visiting. Bon voyage!"
    end

  end

  def more_info
    puts "If you'd like to learn more about what you can see along this route, check out this excellent quidebook:"
    puts ""
    puts ClassicAmericanRoadTrips::Route.all[@number - 1].guidebook
    puts ""
    next_step
  end
  #
  # def more_states(route)
  #   puts "Here are some more routes that go through the same states as #{route}"
  #   puts "1. route 1 --goes through state a"
  #   puts "2. route 2 --goes through state b"
  #   puts "would you like to see more about one of these routes (y/n)?"
  #
  #   input = gets.strip
  #
  #   if input == "y" || input == "yes"
  #     puts "please write the number of the route you're like to learn more about:"
  #     puts "routes from above"
  #
  #   elsif input == "n" || input == "no"
  #     puts "Would you like to see all routes again? (y/n)"
  #
  #   end

  end


# routes in order:
# 1. Pacific Coast Highway
# 2. Historic Route 66
# 3. The Loneliest Road
# 4. The Oregon Trail
# 5. The Great Northern
# 6. The Appalachian Trail
# 7. The Great River Road
# 8. Atlantic Coast
# 9. Border to Border
# 10. The Road to Nowhere
# 11. Southern Pacific


#idea for run method w/ scraped data:
#   # puts "Please write the number of the road trip you would to learn more about."
  # ClassicAmericanRoadTrips::Route.all.each.with_index(1) do |r|
  #   puts "#{i}. #{r}"
  # end
