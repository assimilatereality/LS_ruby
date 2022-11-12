puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp
added_total = (1..num).reduce(:+)
product_total = (1..num).reduce(:*)

case action
when 's' then puts "The sum of the integers between 1 and #{num} is #{added_total}."
when 'p' then puts "The product of the integers between 1 and #{num} is #{product_total}."
end
