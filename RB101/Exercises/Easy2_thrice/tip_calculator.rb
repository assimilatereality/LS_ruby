puts "What is the bill?"
bill = gets.chomp.to_f.round(1)
puts "What is the tip percentage? "
tip_perc = gets.chomp.to_f
tip = (bill * (tip_perc / 100)).round(1)
puts "The tip is $#{tip}"
puts "The total is $#{bill + tip}"
