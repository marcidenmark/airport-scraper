require "open-uri"
require "nokogiri"
require 'pry'

# Information required
# - City names
# - Arrival times
# - Destination times
# - Flight numbers
#
# struct is a quick way to build a class with named accessors.
#
#
class Flight
  attr_accessor :arrival_city, :arrival_time, :destination_city, :destination_time, :flight_number
  def initialize(arrival_time: nil, arrival_city: nil, destination_city: nil, destination_time: nil, flight_number: nil)
	 @arrival_time = arrival_time
	 @arrival_city = arrival_city
	 @destination_city = destination_city
	 @destination_time = destination_time
	 @flight_number = flight_number
  end

  def to_h
    {
		arrival_time: arrival_time
    }
  end
end
# Flight = Struct.new(:arrival_city, :arrival_time, :destination_city, :destination_time, :flight_number)
noko_doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

# wrong_selector = '.flights__table__col--destination span'
# Now let's look for the correct selector!
# If you want to be even more specific:
correct_selector = '.flights__table .stylish-table__row--body'
flights_divs = noko_doc.search(correct_selector)

flights = []
flights_divs.each_with_index do |div, index|
	# binding.pry
	flight = Flight.new

	tid = div.css('.stylish-table__cell.flights__table__col--time').to_a.first.text.strip

	flight.arrival_time = tid
	flights << flight

    # puts "#{index + 2}. #{element.text.strip}"
    # Alright, everything are nokogiri elements
    # On noko elements, you can also call the search method again:
    # p div.class
    arrival_time_selector = '.flights__table__col--time'
    arrival_time = div.search(arrival_time_selector).text.strip
    # Looks like there is some cleanup to do though
    # I'll let you do that :)
    # p arrival_time

    # Now what's next?
    # Well, you can look for the rest of the data. And remember, now you are iterating
    # over each of the flight div, so you can search for subset of information
    # inside each div by doing exactly what I did for the arrival time, but with a
    # different selector, to get city name or anything else!
    # Cheers :D
end


# flights.each { |flight| puts flight.to_h }
require 'json'
puts JSON.generate(flights.map { |flight| flight.to_h })
# flights.each do |flight|
#   puts flight.to_h
# end
