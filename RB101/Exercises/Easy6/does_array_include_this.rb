def include?(array, item)
  rst = ''
  if array.empty?
    rst = false
  else
    array.detect { |x| rst = (x == item) }
  end
  rst
end

#def include?(array, value)
#  !!array.find_index(value)
#end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false
