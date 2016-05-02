
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

  def initialize(name)
    @name = name
  end

  def check
  	bal=4000
  	puts "What would you like to do? (balance, withdraw, deposit)"
  @other = gets.chomp
  check_balance if @other == "balance"
  
  end

  private

  attr_accessor :name

  def check_balance
    puts "You balance is #{bal}"
  end
end

user = Bank.new("user1")
user.check
