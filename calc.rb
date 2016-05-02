### Challenge 1 - Calculator

# Create a simple calculator that first asks the user what method they would like to use 
# (addition, subtraction, multiplication, division) 
# and then asks the user for two numbers, returning the 
# result of the method with the two numbers. Here is a sample prompt:

# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9
# ```
class Calculator
  def initialize(name)
    @name = name
  end

  def start
    puts "What calculation would you like to do? (add, sub, mult, div)"
    @other = gets.chomp
    puts "You chose #{@other}."
    puts "What is number 1?"
    @num1 = gets.chomp
    puts "Number 1: #{@num1}"
    puts "What is number 2?"
    @num2 = gets.chomp
     puts "Number 2: #{@num2}"
    self
  end

  def calc
  	def add(num1, num2)
  		return num1 + num2
	end
	def sub(num1, num2)
		return num1-num2
	end
	def mult(num1, num2)
		return num1*num2
	end
	def div(num1, num2)
		return num1/num2
	end

  	if @other =="add" 
	sum = add("#{@num1}".to_i, "#{@num2}".to_i)
	elsif @other =="sub" 
	sum = sub("#{@num1}".to_i, "#{@num2}".to_i)
	elsif @other =="mult" 
	sum = mult("#{@num1}".to_i, "#{@num2}".to_i)
	elsif @other =="div" 
	sum = div("#{@num1}".to_i, "#{@num2}".to_i)
  end
  puts "Your result is #{sum}"
	   self
 end
end

calc1 = Calculator.new("Calc1")
calc1.start.calc