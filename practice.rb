require "open-uri"
require "nokogiri"

# Information required
# - City names
# - Arrival times
# - Destination times
# - Flight numbers

noko_doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

# wrong_selector = '.flights__table__col--destination span'
# Now let's look for the correct selector!
# If you want to be even more specific:
correct_selector = '.flights__table .stylish-table__row--body'
flights_divs = noko_doc.search(correct_selector)

flights_divs.each_with_index do |div, index|
    # puts "#{index + 2}. #{element.text.strip}"
    # Alright, everything are nokogiri elements
    # On noko elements, you can also call the search method again:
    # p div.class
    arrival_time_selector = '.flights__table__col--time'
    arrival_time = div.search(arrival_time_selector).text.strip
    # Looks like there is some cleanup to do though
    # I'll let you do that :)
    p arrival_time

    # Now what's next?
    # Well, you can look for the rest of the data. And remember, now you are iterating
    # over each of the flight div, so you can search for subset of information
    # inside each div by doing exactly what I did for the arrival time, but with a
    # different selector, to get city name or anything else!
    # Cheers :D
end


arivals = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

arivals.search('.flights__table__col--destination span').each_with_index do |element, index|
	puts "#{index + 2}. #{element.text.strip}"
end

# arivals.search('.flights__table__col--destination')[1].text.strip.match(/[^\t\r\n]*/).each_with_index do |element, index|
# 	puts "#{index + 2}. #{element.text.strip}"
# end


# doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))
# nodeset = doc.search('.flights__table__col--destination span')


# nodeset.map.with_index{ |x, i| x * i }
# puts nodeset.size

# puts nodeset[0]

# puts nodeset[1..20].text.uniq

# puts [1,2,3].each {|index| puts nodeset[index].text.strip }
# def nodeset_toarray ()

# return nodeset_toarray
# end

# WITH SCAPPING ADVICE
puts "You can do it MARCI!"

# Nokogiri::HTML(open(url).read).search('.flights__table__col--destination')[1].text.strip.match(/[^\t\r\n]*/)



p [1, 2, 3, 4, 5].select { |number| number.odd? }

doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))
nodeset = doc.search('.flights__table__col--destination span')

nodeset.size
# 1456
nodeset[0]
 #(Element:0x3ffe74c92900 { name = "span", children = [ #(Text "\r\n\t\t\t\t\t\t\tFra\r\n\t\t\t\t\t\t")] })
nodeset[0].text
# "\r\n\t\t\t\t\t\t\tFra\r\n\t\t\t\t\t\t"
nodeset[0].text.strip
#  "Fra"
[1,2,3].each {|index| puts nodeset[index].text.strip };0
# Agadir/Marocco
# Agadir/Marocco
# Norwegian Air International

values=["4" ,"4", "2"]
p values.uniq
# ______________________________________________

arivals = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

arivals.search('.flights__table__col--destination span').each_with_index do |element, index|
	puts "#{index + 2}. #{element.text.strip}"
end

# arivals.search('.flights__table__col--destination')[1].text.strip.match(/[^\t\r\n]*/).each_with_index do |element, index|
# 	puts "#{index + 2}. #{element.text.strip}"
# end


# doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))
# nodeset = doc.search('.flights__table__col--destination span')


# nodeset.map.with_index{ |x, i| x * i }
# puts nodeset.size

# puts nodeset[0]

# puts nodeset[1..20].text.uniq

# puts [1,2,3].each {|index| puts nodeset[index].text.strip }
# def nodeset_toarray ()

# return nodeset_toarray
# end


# Nokogiri::HTML(open(url).read).search('.flights__table__col--destination')[1].text.strip.match(/[^\t\r\n]*/)












# class="stylish-table__cell flights__table__col--time"
# 		<span>
# 								00:15
# 							</span>
# 		<div class="stylish-table__cell v--desktop-only">
# 		<div>
# 			<span>
# 				<span>
# 					Norwegian Air International
# 				</span>
# 						</span>
# 					</div>
# 				</div>
