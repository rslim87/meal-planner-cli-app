

class MealPlanner::Scraper

	# attr_accessor :url


	# def initialize (url)
	# 	@url = url
	# end

	#grab the index page
	def self.get_breakfast
		breakfast_dish = []
		
	doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/real-food-resources/"))
	
	breakfast_dish << doc.css('ol li')[12].text

	breakfast_dish << doc.css('ol li')[14].text
	breakfast_dish << doc.css('ol li')[53].text.gsub("(perfect for brunch)","")
	 breakfast_dish
			# breakfast << item 1, item 2, item 3

		#lunch item 1 : doc.css('ol li')[39].text
		#lunch item 2 : doc.css('ol li')[46].text
		#lunch item 3 : doc.css('ol li')[57].text
		# lunch << item 1, item 2, item 3

		#dinner item 1 : doc.css('ol li')[130].text
		#dinner item 2 : doc.css('ol li')[144].text
		#dinner item 3 : doc.css('ol li')[137].text
		# dinner << item 1, item 2, item 3
		
	end

# 	def self.dish
# 		# doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/recipe-whole-wheat-banana-pancakes-freeze-the-leftovers/"))
# 		# page = doc.css('ol li')[12].children.attribute("href").text
# 		# docs = Nokogiri::HTML(open(page))
# 		dish = MealPlanner::Planner.new
# 		doc = Nokogiri::HTML(open(dish.url))
# 		dish.prep_time = doc.css("span.wprm-recipe-prep_time-minutes").text
# 		dish.cook_time =  doc.css("span.wprm-recipe-cook_time-minutes").text 
# 		#ingredients: 
# 		dish.ingredients = doc.css("div.wprm-recipe-ingredient-group").text.gsub("\t", '').gsub("\n", ' ').split("  ")
# 		#list.each {|item| puts item}
# 		#instructions 
# 		dish.instructions = doc.css("div.wprm-recipe-instruction-group").text.gsub("\t", '').gsub("\n", ' ').gsub("   ","").split(".")
# 		dish
# 		# step 2 count = 1
# 		# 		ingredients.each do |item|
# 		# 		puts "#{count}. #{item}"
# 		# 		count = count + 1
# 		# 		end

# end

	#scrapes the index page for dishes



	#scrapes individual dish page for recipe
	# def get_recipes
	# 	self.get_page
	# end




	# def get_recipes
		# doc = Nokogiri::HTML(open(""))
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


# def get_page
# 	doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/recipe-proscuitto-wrapped-scallops/"))
# 	binding.pry
# end
# end

# Scraper.new.get_page

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




	
end