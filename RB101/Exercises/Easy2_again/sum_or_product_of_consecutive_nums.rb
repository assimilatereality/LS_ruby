puts "Enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp

ary = 1..number

case action
when 's' then total = ary.inject(:+)
when 'p' then total = ary.reduce(1, :*)
else "Erroneous entry."
end
##if action == 's'
##  total = ary.inject(:+)
##else
##  total = ary.reduce(1, :*)
  #total = 1
  #ary.each do |product|
  #  total = product * total
  #end
##end

puts total

