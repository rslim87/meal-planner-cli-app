

class Scraper
	def get_page
		doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/real-food-resources/"))
		doc.css('ol li').each do |list|
			list.detect {|item| item == "banana"}
		binding.pry
		
	end
	end
end

Scraper.new.get_page



#breakfast item 1 : doc.css('ol li')[12].text
#breakfast item 2 : doc.css('ol li')[14].text
#breakfast item 3 : doc.css('ol li')[53].text.gsub("(perfect for brunch)","")

#lunch item 1 : doc.css('ol li')[39].text
#lunch item 2 : doc.css('ol li')[46].text
#lunch item 3 : doc.css('ol li')[57].text

#dinner item 1 : doc.css('ol li')[130].text
#dinner item 2 : doc.css('ol li')[144].text
#dinner item 3 : doc.css('ol li')[137].text

