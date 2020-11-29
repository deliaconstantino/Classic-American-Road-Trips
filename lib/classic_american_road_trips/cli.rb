class ClassicAmericanRoadTrips::CLI
  attr_accessor :routes

  def call
    puts "Welcome to Classic American Road Trips."
    run
  end

  def run
    puts "Please write the number of the road trip you would to learn more about."
    puts "Routes:"
    @routes = ["Pacific Coast", "Border to Border", "The Road to Nowhere", "The Great River Road", "Appalachian Trail", "Atlantic Coast", "The Great Northern", "The Oregon Trail", "The Loneliest Road", "Southern Pacific", "Route 66"]
    @routes.each.with_index(1) do |r, i|
      puts "#{i}. #{r}"
    end
    # puts "1. Pacific Coast"
    # puts "2. Border to Border"
    # puts "3. The Road to Nowhere"
    # puts "4. The Great River Road"
    # puts "5. Appalachian Trail"
    # puts "6. Atlantic Coast"
    # puts "7. The Great Northern"
    # puts "8. The Oregon Trail"
    # puts "9. The Loneliest Road"
    # puts "10. Southern Pacific"
    # puts "11. Route 66"
    get_and_output
  end

  def get_and_output
    num = gets.strip.to_i
    puts "You picked number #{num}:"
    puts "#{@routes[num - 1]}"
    info
  end

  def info
    puts "paragraph about this route"
    puts "these are the states visited along this route, grab from route attribute"
    puts "highlights along route highlights are: list..."

    puts "what would you like to do now?"
    puts "1. learn more about the route"
    puts "2. see another trip that goes through one of the states on this route"
    puts "3. see all routes again"
    puts "4. exit"

    answer = gets.strip.to_i
    case answer
    when 1
      more_info(route)
    when 2
      more_states(route)
    when 3
      run
    when 4
      puts "Thank you for visiting!"
    end

  end

  def more_info(route)
    puts "more info about the route, link to guide book, or second page of data"
  end

  def more_states(route)
    puts "Here are some more routes that go through the same states as #{route}"
    puts "1. route 1 --goes through state a"
    puts "2. route 2 --goes through state b"
    puts "would you like to see more about one of these routes (y/n)?"

    if "y" || "yes"
      puts "please select a number"
      

  end


end

#
