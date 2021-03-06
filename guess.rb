### Challenge 4 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100. 
# Once the user guesses a number, the program should say, higher, lower, or 
# tell the user that he got the number correct.  The user should continue to make guesses 
# until he guesses correctly. Also, once the user guesses correctly, the program should 
# print the number of guesses needed to arrive at the correct answer. Below is sample output:

# ```
# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries
# ```

class Guess
  def initialize(name)
   	@name = name
	end

	  def start
		  	number = 1+rand(100)
		  	a = 1
		   puts "Guess a number between 1 and 100"
		   @other = gets.chomp
		   
		   if number == "#{@other}".to_i
		  		puts "That is correct! You got it on the first try!"
		   else while number != "#{@other}".to_i do
		   if number < "#{@other}".to_i
			   puts "The number is lower than #{@other}. Guess again"
			 	a += 1
				@other = gets.chomp
		 	elsif number > "#{@other}".to_i
			  	puts "The number is higher than #{@other}. Guess again"
			  	a += 1
			 	@other = gets.chomp
		  	end
		 	end
			 puts "That is correct! You got it in #{a} tries."
			 self
			end
		end
end

guess1 = Guess.new("guess1")
guess1.start