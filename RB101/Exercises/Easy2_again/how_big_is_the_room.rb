puts "Enter the length of the room in meters: "
length = gets.chomp.to_f
puts "Enter the width of the room in meters: "
width = gets.chomp.to_f
sq_meters = (length * width).round(2)
sq_feet = (sq_meters * 10.7639).round(2)
puts "The area of the room is #{sq_meters} sq. meters (#{sq_feet} sq. feet)."
