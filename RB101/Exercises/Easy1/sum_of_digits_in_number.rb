#def sum(num)
#  nums = num.to_s.split('')
#  num_ary = []
#  nums.each { |x| num_ary << x.to_i }
#  num_ary.sum
#end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#23.to_s        # => "23"
#  .chars       # => ["2", "3"]
#  .map(&:to_i) # => [2, 3]
#  .reduce(:+)  # => 5