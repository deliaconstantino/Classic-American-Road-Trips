# require "classic_american_road_trips/version"
require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative "./classic_american_road_trips/version"
require_relative "./classic_american_road_trips/cli"
require_relative "./classic_american_road_trips/scraper"
require_relative "./classic_american_road_trips/route"

module ClassicAmericanRoadTrips
  class Error < StandardError; end
  # Your code goes here...
end
