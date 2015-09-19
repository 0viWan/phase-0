puts "Hello there, and what\'s your first name?"
first_name = gets.chomp
puts "Your name is " + first_name + "? What a lovely name!"
puts "What is your middle name, " + first_name + "?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "It is a pleasure to meet you, " + first_name + " " + middle_name + " " + last_name + "."

puts "Hey stranger, wanna tell me your favorite number?"
fav_num = gets.chomp.to_i
better_number = fav_num + 1
puts "But " + better_number.to_s + " is such a bigger and better number! Maybe this should be your fave.."