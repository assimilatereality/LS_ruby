puts "How old are you in years?"
age = gets.chomp.to_i
puts "At what age do you want to retire?"
age_at_retirement = gets.chomp.to_i

t = Time.new.year
years_to_retirement = (age_at_retirement - age)

puts "It's #{t}. You will retire in #{t + years_to_retirement}."
puts "You have only #{years_to_retirement} years of work to go."
