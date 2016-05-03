
### Challenge 3 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. 
# Write three methods to perform these calculations and output the result to the user. 
# Here is a sample output:

# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```
class Bank

  def initialize(name, balance)
    @name = name
    @balance = balance
  end
	def sub(num1, num2)
	  		return num1-num2
	  	end
  	def add(num1, num2)
  		return num1+num2
  	end
  def check
  	puts "What would you like to do? (balance, withdraw, deposit)"
  @other = gets.chomp
  	puts "Please verify your identity and insert your username"
  @check=gets.chomp
  check_balance if @other == "balance" && @check == "user1"
  withdraw if @other == "withdraw" && @check == "user1"
  deposit if @other == "deposit"  && @check == "user1"
  end

  private

  attr_accessor :name

  def check_balance
    
    puts "Your balance is #{@balance}"
  end
  def withdraw
  	puts "How much would you like to withdraw? (Current Balance: #{@balance}"
  	@withdraw = gets.chomp
  	sum = sub("#{@balance}".to_i, "#{@withdraw}".to_i)
    puts "You withdrew #{@withdraw}. Your balance is now #{sum}"
  end
  def deposit
  	puts "How much would you like to deposit? (Current Balance: #{@balance}"
  	@deposit = gets.chomp
  	sum = add("#{@balance}".to_i, "#{@deposit}".to_i)
    puts "You desposited #{@deposit}. Your balance is now #{sum}"
  end
end

user = Bank.new("user1", 4000)
user.check
