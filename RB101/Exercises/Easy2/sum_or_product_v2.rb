puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp

def compute_sum(num)
  (1..num).inject { |sum, n| sum + n }
end

def products(number)
  (1..number).inject { |product, n| product * n }
end

case action
when 's'
  sum_total = compute_sum(num)
  puts "The sum of the integers between 1 and #{num} is #{sum_total}."
when 'p'
  sum_total = products(num)
  puts "The product of the integers between 1 and #{num} is #{sum_total}."
else
  puts "Unknown operation."
end

