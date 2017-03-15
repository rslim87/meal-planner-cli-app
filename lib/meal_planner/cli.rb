class MealPlanner::CLI

	def call 
		# MealPlanner::Scraper
		# MealPlanner::Planner
		 options	
	end

#Welcome user to meal_planner and its purpose

	def welcome
		puts "Welcome to meal planner.  Using this app will help you plan your meals for the day."
		
	end

#Layout options for the user
	def options
		user_input = nil
		while user_input != "exit"
		puts	"-------------------------------------------"
		puts "Please enter the meal you would like to see recipes for: breakfast, lunch, dinner. Or enter exit if done." 
		user_input = gets.downcase.strip
		if user_input == "breakfast"
			print_breakfast
		elsif user_input == "lunch"
			print_lunch
		elsif user_input == "dinner"
			print_dinner
		# elsif user_input == "exit"
		# 	goodbye
			# else
			# 	puts "Invalid entry. Please enter the meal you would like to see recipes for: breakfast, lunch, dinner.  If you are done with meal planning, please type exit."
			# end
		end
		end
		goodbye
	end
#recipe options for breakfast, lunch, dinner

#breakfast will first show options to user of dishes where the recipes are available. Once user picks that dish, that dish recipe will be shown to user
	def print_breakfast
		puts "-------------------------------------------"
		puts "Please enter the number for the dish which you would like the recipe for:"
			
		MealPlanner::Scraper.scrape_breakfast_meals
		MealPlanner::Planner.all.each.with_index(1) do |meal, index|
			puts "#{index}. #{meal.name}"
		end

		input = gets.to_i

		meal = MealPlanner::Planner.all[input - 1]
		display_meal(meal)
			
	end	

#lunch will first show options to user of dishes where the recipes are available. Once user picks that dish, that dish recipe will be shown to user
	def print_lunch
		puts "-------------------------------------------"
		puts "Please enter the number for the dish which you would like the recipe for:"
		
		MealPlanner::Scraper.scrape_lunch_meals
		MealPlanner::Planner.all.each.with_index(1) do |meal, index|
			puts "#{index}. #{meal.name}"
		end

		input = gets.to_i

		meal = MealPlanner::Planner.all[input - 1]
		display_meal(meal)
		
	end

#dinner will first show options to user of dishes where the recipes are available. Once user picks that dish, that dish recipe will be shown to user
	def print_dinner
		puts "-------------------------------------------"
		puts "Please enter the number for the dish which you would like the recipe for:"
	
		MealPlanner::Scraper.scrape_dinner_meals
		MealPlanner::Planner.all.each.with_index(1) do |meal, index|
			puts "#{index}. #{meal.name}"
		end

		input = gets.to_i

		meal = MealPlanner::Planner.all[input - 1]
		display_meal(meal)
		
	end


	def display_meal(meal)
		puts "-------------------------------------------"
		puts meal.name
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


#what happens when exit is typed.
	def goodbye
		puts "Thank you for using the meal planner.  Hope to see you again!"
	end

end