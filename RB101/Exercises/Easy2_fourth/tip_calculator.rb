puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip = gets.chomp.to_f / 100
tip_amt = bill * tip.round(2)

puts "The tip is $#{tip_amt}"
puts "The total is $#{bill.round(2) + tip_amt}"

#What is the bill? 200
#What is the tip percentage? 15

#The tip is $30.0
#The total is $230.0
