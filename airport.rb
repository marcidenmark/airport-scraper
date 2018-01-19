require "open-uri"
require "nokogiri"



def  destination()
	doc = Nokogiri::HTML(open("https://www.cph.dk/flyinformation/afgange/"))
	doc.search('.flights__table .stylish-table__row--body .stylish-table__cell span strong')
end
puts destination


# WITH SCAPPING ADVICE
puts "Welcome to the Christmas List"

# ingredient = 'chocolate'
# url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=#{ingredient}"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.m_titre_resultat a').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
# end
