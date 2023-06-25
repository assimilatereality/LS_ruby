nums = []
puts "Enter the 1st number:"
                    nums << gets.chomp.to_i
puts "Enter the 2nd number:"
                    nums << gets.chomp.to_i
puts "Enter the 3rd number:"
                    nums << gets.chomp.to_i
puts "Enter the 4th number:"
                    nums << gets.chomp.to_i
puts "Enter the 5th number:"
                    nums << gets.chomp.to_i
puts "Enter the last number:"
test_num = gets.chomp.to_i

if nums.include?(test_num)
  puts "The number #{test_num} appears in #{nums}."
else
  puts "The number #{test_num} does not appear in #{nums}"
end
