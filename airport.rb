require "open-uri"
require "nokogiri"

arivals = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/ankomster/"))

new_array= arivals.search('.flights__table__col--destination span').each_with_index do |element, index|
	puts "#{index + 2}. #{element.text.strip}"
end

arivals.search('.flights__table__col--destination')[1].text.strip.match(/[^\t\r\n]*/).each_with_index do |element, index|
	puts "#{index + 2}. #{element.text.strip}"
end


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

Nokogiri::HTML(open(url).read).search('.flights__table__col--destination')[1].text.strip.match(/[^\t\r\n]*/)
