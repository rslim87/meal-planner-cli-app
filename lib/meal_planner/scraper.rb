

class Scraper
# 	def get_page
# 		doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/real-food-resources/"))
# 		doc.css('ol li').each do |list|
# 			list.detect {|item| item == "banana"}
		
		
# 	end
# 	end
# end


#breakfast item 1 : doc.css('ol li')[12].text
#breakfast item 2 : doc.css('ol li')[14].text
#breakfast item 3 : doc.css('ol li')[53].text.gsub("(perfect for brunch)","")

#lunch item 1 : doc.css('ol li')[39].text
#lunch item 2 : doc.css('ol li')[46].text
#lunch item 3 : doc.css('ol li')[57].text

#dinner item 1 : doc.css('ol li')[130].text
#dinner item 2 : doc.css('ol li')[144].text
#dinner item 3 : doc.css('ol li')[137].text


def get_page
	doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/recipe-proscuitto-wrapped-scallops/"))
	binding.pry
end
end

Scraper.new.get_page

#Breakfast
#1. Banana Bread 
#prep time in minutes: doc.css("span.wprm-recipe-prep_time-minutes").text
#cook time in minutes: doc.css("span.wprm-recipe-cook_time-minutes").text 
#ingredients: 
#step 1 list = doc.css("div.wprm-recipe-ingredient-group").text.gsub("\t", '').gsub("\n", ' ').split("  ")
#step 2 list.each {|item| puts item}
#instructions 
#step 1 ingredients = doc.css("div.wprm-recipe-instruction-group").text.gsub("\t", '').gsub("\n", ' ').gsub("   ","").split(".")
# step 2 count = 1
# 		ingredients.each do |item|
# 		puts "#{count}. #{item}"
# 		count = count + 1
# 		end




	
