arr = [3, 4, 5]
b = arr.map { |a| a + 2 }

# or
c = []
arr.each do |n|
  c << n + 2
end

p arr
p b
p c
