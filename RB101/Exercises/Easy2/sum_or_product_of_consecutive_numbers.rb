puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp

def compute_sum(num)
  total = 0
  loop do
    total += num
    num -= 1
    break if num == 0
  end
  puts total
  total
end

def products(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
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
