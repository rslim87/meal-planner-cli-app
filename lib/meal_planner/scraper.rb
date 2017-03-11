

class MealPlanner::Scraper

	#grab the dishes from the index page
	def self.get_breakfast
		breakfast_dish = []	
		doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/real-food-resources/"))
	
		breakfast_dish << doc.css('ol li')[12].text
		breakfast_dish << doc.css('ol li')[14].text
		breakfast_dish << doc.css('ol li')[53].text.gsub("(perfect for brunch)","")
	 	breakfast_dish

	end

	def self.get_lunch
		lunch_dish = []
		doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/real-food-resources/"))
		lunch_dish << doc.css('ol li')[38].text
		lunch_dish << doc.css('ol li')[46].text
		lunch_dish << doc.css('ol li')[98].text
		lunch_dish
	end

	def self.get_dinner
		dinner_dish = []
		doc = Nokogiri::HTML(open("https://www.100daysofrealfood.com/real-food-resources/"))
		dinner_dish << doc.css('ol li')[130].text
		dinner_dish << doc.css('ol li')[144].text
		dinner_dish << doc.css('ol li')[157].text
		dinner_dish
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