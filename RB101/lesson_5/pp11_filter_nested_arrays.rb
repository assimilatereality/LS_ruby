arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

ary2 = arr.map do |item|
  item.select { |num| num % 3 == 0 }
end

ary2 = arr.map do |element|
  element.reject do |num|
    num % 3 != 0
  end
end
# => [[], [3], [9], [15]]

p ary2
