array = [1, 2, 3]

array.each do |element|
  a = element
  p a
end

puts a # undefined local variable or method 'a'
