def square(num)
  multiply(num, num)
end

def multiply(num1, num2)
  num1 * num2
end

puts square(4) == 16
puts square(-6) == 36
