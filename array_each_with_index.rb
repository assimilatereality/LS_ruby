arr = [1, 2, 3]
arr.each_with_index { |v, i| puts "Index in array is #{i} if value >= 2." if v >= 2 }
