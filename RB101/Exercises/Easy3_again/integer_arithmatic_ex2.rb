def enter_numbers
  (1..2).map do |num|
    puts "Enter positive integer number #{num}: "
    gets.chomp.to_i
  end
end

nums = enter_numbers

puts "#{nums[0]} + #{nums[1]} = #{nums.reduce(:+)}"
puts "#{nums[0]} - #{nums[1]} = #{nums.reduce(:-)}"
puts "#{nums[0]} * #{nums[1]} = #{nums.reduce(:*)}"
puts "#{nums[0]} / #{nums[1]} = #{nums.reduce(:/)}"
puts "#{nums[0]} % #{nums[1]} = #{nums.reduce(:%)}"
puts "#{nums[0]} ** #{nums[1]} = #{nums.reduce(:**)}"
