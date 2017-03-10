class MealPlanner::CLI

	def call 
			MealPlanner::Scraper
		MealPlanner::Planner
		welcome
		options

		#print_breakfast
		
		# print_breakfast
		# display_meal(meal)
	
		
	end

#Welcome user to meal_planner and its purpose

	def welcome
		puts "Welcome to meal planner.  Using this app will help you plan your meals for the day."
		
	end

#Layout options for the user
	def options
		# user_input = nil
		# while user_input != "exit"
		puts "Please enter the meal you would like to see recipes for: breakfast, lunch, dinner.  If you are done with meal planning, please type exit." 
		user_input = gets.downcase.strip
		if user_input == "breakfast"
			print_breakfast
		elsif user_input == "lunch"
			lunch
		elsif dinner
			dinner

				
			# when "lunch"
			# 	lunch 
			# when "dinner"
			# 	dinner
			# else
			# 	puts "Invalid entry. Please enter the meal you would like to see recipes for: breakfast, lunch, dinner.  If you are done with meal planning, please type exit."
			end
		
	end
#recipe options for breakfast, lunch, dinner

#breakfast will first show options to user of dishes where the recipes are available. Once user picks that dish, that dish recipe will be shown to user
	def print_breakfast
		puts "Please see below for the list of dishes for breakfast.  Please type the number for the dish which you would like the recipe for:"
		puts " "
		count = 1
		MealPlanner::Scraper.get_breakfast.each do |meal|
			puts "#{count}. #{meal}"
			count +=1 
		end
		puts " "
		input = gets.to_i
		
			if input == 1
				puts "-------------------------------------------"
				puts "Whole-wheat banana (or berry) pancakes"
		 		meal = MealPlanner::Planner.create("https://www.100daysofrealfood.com/recipe-whole-wheat-banana-pancakes-freeze-the-leftovers/")
		 		display_meal(meal)
		 	elsif input == 2
		 		puts "-------------------------------------------"
		 		puts "Pecan maple breakfast cookies"
		 		meal = MealPlanner::Planner.create("https://www.100daysofrealfood.com/recipe-pecan-maple-breakfast-cookies/")
		 		display_meal(meal)
		 	elsif input == 3
		 		puts "-------------------------------------------"
		 		puts "Egg Souffle"
		 		meal = MealPlanner::Planner.create("https://www.100daysofrealfood.com/recipe-egg-souffle/")
		 		display_meal(meal)
		 	end
	end


	def display_meal(meal)
		puts "Prep time: #{meal.prep_time} minutes"
		puts "Cook time: #{meal.cook_time} minutes"
		puts "Ingredients:"
		ingredient = meal.ingredients
		ingredient.each {|item| puts item}
		puts "Instructions:"
		instruction = meal.instructions
			count = 1
			instruction.each do |item|
				puts "#{count}. #{item}"
				count = count + 1
				end
		
	end

	

#lunch will first show options to user of dishes where the recipes are available. Once user picks that dish, that dish recipe will be shown to user
	def lunch
		puts "Please see below for the list of dishes for lunch.  Please type the number for the dish which you would like the recipe for"
		puts <<-DOC
		1. Dish #1
		2. Dish #2
		3. Dish #3
		DOC
		user_input = gets.strip
		case user_input
			when "1"
				puts "dish #1"
				puts "prep time"
				puts "cook time"
				puts "servings"
				puts "ingredients"
				puts "instructions"
			when "2"
				puts "dish #2"
				puts "prep time"
				puts "cook time"
				puts "servings"
				puts "ingredients"
				puts "instructions"
			when "3"
				puts "dish #3"
				puts "prep time"
				puts "cook time"
				puts "servings"
				puts "ingredients"
				puts "instructions"
			end
	end

#dinner will first show options to user of dishes where the recipes are available. Once user picks that dish, that dish recipe will be shown to user
	def dinner
		puts "Please see below for the list of dishes for lunch.  Please type the number for the dish which you would like the recipe for"
		puts <<-DOC
		1. Dish #1
		2. Dish #2
		3. Dish #3
		DOC
		user_input = gets.strip
		case user_input
			when "1"
				puts "dish #1"
				puts "prep time"
				puts "cook time"
				puts "servings"
				puts "ingredients"
				puts "instructions"
			when "2"
				puts "dish #2"
				puts "prep time"
				puts "cook time"
				puts "servings"
				puts "ingredients"
				puts "instructions"
			when "3"
				puts "dish #3"
				puts "prep time"
				puts "cook time"
				puts "servings"
				puts "ingredients"
				puts "instructions"
			end
	end

	# def display_meal(meal)
	# 	puts "#{meal.prep_time}"
	# end

#what happens when exit is typed.
	def goodbye
		puts "Thank you for using the meal planner.  Hope to see you again!"
	end

end