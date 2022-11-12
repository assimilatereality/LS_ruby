puts "What is your age? "
age = gets.chomp.to_i
puts "At what age would you like to retire? "
retirement_age = gets.chomp.to_i
yr = Time.now.year
puts "It's #{yr}. You will retire in #{retirement_age - age + yr}."
puts "You have only #{retirement_age - age} years of work to go!"

