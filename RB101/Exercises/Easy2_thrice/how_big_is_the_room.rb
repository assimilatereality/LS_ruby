puts "Enter the length of the room in meters: "
length = gets.chomp.to_i
puts "enter the width of the room in meters: "
width = gets.chomp.to_i
sq_meters = length * width
sq_feet = (sq_meters * 10.7639).round(2)
puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."

