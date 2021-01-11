arr = [1, 'joe', 3.1]
arr.each_with_index do |value, index|
  puts "#{index + 1}. #{value}"
end
