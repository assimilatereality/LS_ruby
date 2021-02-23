print "What is the bill? "
bill = gets.chomp.to_f
print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f
tip = (bill * tip_percentage / 100).round(2)

total_bill = (bill + tip).round(2)
tip = format("%#.2f", tip)
total_bill = format("%#.2f", total_bill)

puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"
