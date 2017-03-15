

class MealPlanner::Scraper

	BREKAFAST_MEAL_URLS = ["https://www.100daysofrealfood.com/recipe-whole-wheat-banana-pancakes-freeze-the-leftovers/", "https://www.100daysofrealfood.com/recipe-pecan-maple-breakfast-cookies/", "https://www.100daysofrealfood.com/recipe-egg-souffle/" ]
	LUNCH_MEAL_URLS = ["https://www.100daysofrealfood.com/recipe-whole-wheat-macaroni-and-cheese/", "https://www.100daysofrealfood.com/recipe-vegetable-pancakes/", "https://www.100daysofrealfood.com/recipe-peanut-squash-soup/"]
	DINNER_MEAL_URLS = ["https://www.100daysofrealfood.com/recipe-almond-encrusted-fish-with-an-easy-buerre-blanc-sauce/", "https://www.100daysofrealfood.com/recipe-proscuitto-wrapped-scallops/", "https://www.100daysofrealfood.com/recipe-chicken-and-cheese-tostadas/"]

	#grab the dishes from the index page
	def self.scrape_breakfast_meals
		BREKAFAST_MEAL_URLS.each do |link|
			self.scrape_meal(link)
		end
	end

	def self.scrape_lunch_meals
		LUNCH_MEAL_URLS.each do |link|
			self.scrape_meal(link)
		end
	end

	def self.scrape_dinner_meals
		DINNER_MEAL_URLS.each do |link|
			self.scrape_meal(link)
		end
	end

	def self.scrape_meal(url)
		
		doc = Nokogiri::HTML(open(url))
		name = doc.css("h2.wprm-recipe-name").text.strip
		prep_time = doc.css("span.wprm-recipe-prep_time-minutes").text
		cook_time =  doc.css("span.wprm-recipe-cook_time-minutes").text 
		ingredients = doc.css("div.wprm-recipe-ingredient-group").text.gsub("\t", '').gsub("\n", ' ').split("  ")
		instructions = doc.css("div.wprm-recipe-instruction-group").text.gsub("\t", '').gsub("\n", ' ').gsub("   ","").split(".")
		MealPlanner::Planner.new(prep_time, cook_time, ingredients, instructions, name)
		
	end
	
end