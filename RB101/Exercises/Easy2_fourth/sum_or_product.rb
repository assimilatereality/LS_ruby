puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
axn = gets.chomp
total = 0
case axn
when 's'
  action = 'sum'
  # total = 0
  counter = num
  while counter > 0
    total += counter
    counter -= 1
  end
when 'p'
  action = 'product'
  total = 1
  counter = num
  while counter > 0
    total *= counter
    counter -= 1
  end
else exit(1)
end

puts "The #{action} of the integers between 1 and #{num} is #{total}."
