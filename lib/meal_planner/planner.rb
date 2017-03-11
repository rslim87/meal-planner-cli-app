class MealPlanner::Planner

	attr_accessor :url, :prep_time, :cook_time, :ingredients, :instructions

	@@all = []

	def initialize(url)
		@url = url
		@prep_time = prep_time
		@cook_time = cook_time
		@ingredients = ingredients
		@instructions = instructions
	end

	def self.all
		@@all
	end

	def save
		self.class.all << self
	end

	def self.create(url)
		meal = MealPlanner::Planner.new(url)
		doc = Nokogiri::HTML(open(url))
		meal.prep_time = doc.css("span.wprm-recipe-prep_time-minutes").text
		meal.cook_time =  doc.css("span.wprm-recipe-cook_time-minutes").text 
		meal.ingredients = doc.css("div.wprm-recipe-ingredient-group").text.gsub("\t", '').gsub("\n", ' ').split("  ")
		meal.instructions = doc.css("div.wprm-recipe-instruction-group").text.gsub("\t", '').gsub("\n", ' ').gsub("   ","").split(".")
		meal.save
		meal
	end


end