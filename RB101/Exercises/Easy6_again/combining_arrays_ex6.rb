def merge(ary1, ary2)
  ary2.each { |num| ary1 << num if !ary1.include?(num) }
  #a | b
  ary1
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]