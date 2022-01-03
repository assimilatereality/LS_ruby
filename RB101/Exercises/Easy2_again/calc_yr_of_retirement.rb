puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i
t = Time.now

puts "It's #{t.year}. You will retire in #{t.year + retirement_age - age}"
puts "You have only #{retirement_age - age} years of work to go!"
