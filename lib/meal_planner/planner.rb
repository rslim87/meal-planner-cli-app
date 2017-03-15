class MealPlanner::Planner

	attr_accessor  :prep_time, :cook_time, :ingredients, :instructions, :name

	@@all = []

	def initialize(prep_time, cook_time, ingredients, instructions, name)
		@name = name
		@prep_time = prep_time
		@cook_time = cook_time
		@ingredients = ingredients
		@instructions = instructions
		save
	end

	def self.all
		@@all
	end

	def save
		self.class.all << self
	end


end