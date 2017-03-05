class MealPlanner::CLI

	def call 
		welcome
		options
		goodbye
	end

#Welcome user to meal_planner and its purpose

	def welcome
		puts "Welcome to meal planner.  Using this app will help you plan your meals for the day."
	end

#Layout options for the user
	def options
		user_input = nil
		while user_input != "exit"
		puts "Please enter the meal you would like to see recipes for: breakfast, lunch, dinner.  If you are done with meal planning, please type exit." 
		user_input = gets.downcase.strip
		case user_input
			when "breakfast"
				breakfast	
			when "lunch"
				lunch 
			when "dinner"
				dinner
			else
				puts "Invalid entry. Please enter the meal you would like to see recipes for: breakfast, lunch, dinner.  If you are done with meal planning, please type exit."
			end
		end
	end
#recipe options for breakfast, lunch, dinner
	def breakfast
		puts "Please see below for the list of dishes for breakfast.  Please type the number for the dish which you would like the recipe for"
		puts <<-DOC
		1. Dish #1
		2. Dish #2
		3. Dish #3
		DOC
	end

	def lunch
		puts "lunch"
	end

	def dinner
		puts "dinner"
	end
#what happens when exit is typed.
	def goodbye
		puts "Thank you for using the meal planner.  Hope to see you again!"
	end

end