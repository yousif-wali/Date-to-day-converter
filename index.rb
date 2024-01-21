require 'date'

class UserInformation
  attr_accessor :username, :date_of_birth, :day_of_the_week

  def initialize(username, date_of_birth)
    @username = username
    @date_of_birth = date_of_birth
    @day_of_the_week = calculate_day_of_the_week
  end

  def calculate_day_of_the_week
    # Using Ruby's Date class to find the day of the week for a given date
    birth_date = Date.parse(@date_of_birth)
    day_names = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    day_names[birth_date.wday]
  end
end

# Prompting user for input
puts "Please enter your username:"
username_input = gets.chomp

puts "Please enter your date of birth (YYYY-MM-DD):"
date_of_birth_input = gets.chomp

# Creating a new instance of UserInformation with the provided input
user_info = UserInformation.new(username_input, date_of_birth_input)

# Outputting the results
puts "Username: #{user_info.username}"
puts "Date of Birth: #{user_info.date_of_birth}"
puts "Day of the Week: #{user_info.day_of_the_week}"
