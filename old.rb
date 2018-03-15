require "open-uri"
require "nokogiri"




# doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))
# doc.search('.flights__table__col--destination span').each_with_index do |element, index|
# 	puts "#{index + 2}. #{element.text.strip}"
# end

doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))
nodeset = doc.search('.flights__table__col--destination span')
nodeset.size

# flights_divs = doc.search('.flights_table .stylish-table_row--body')
# puts flights_divs
puts "You can do it MARCI!"

# below doesn't work
		# doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

		# flights= doc.search('.flights__table__col--destination span').each_with_index do |element, index|
		# 	puts "#{index + 2}. #{element.text.strip}"
		# 	puts element.children
		# end
		# flights.each do |flight|
		# 	flight.uniq
		# end


#below doesn't work
		# doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

		# arrivals=
		# def doc.search(('.flights__table__col--destination span')).each_with_index do |element, index|
		# 	puts "#{index + 2}. #{element.text.strip}"
		# end
		# end
		# puts arrivals

#



# example: doc.search('something somethign').each do |row_element| ...; end

# def arivals
# 	doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))
# 	doc.search('.flights__table__col--destination span').each do |span|
# 		span.text
# 	end
# end

# WITH SCAPPING ADVICE
puts "You can do it MARCI!"

