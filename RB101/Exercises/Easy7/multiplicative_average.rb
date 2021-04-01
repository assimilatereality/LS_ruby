def show_multiplicative_average(array)
  prod = 1.to_f
  array.each { |num| prod *= num }
  puts "The result is #{format("%.3f", prod / array.size)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
