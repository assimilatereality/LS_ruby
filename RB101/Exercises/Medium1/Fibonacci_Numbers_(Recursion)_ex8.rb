def fibonacci(index)
  first_num = 1
  second_num = 1
  count = 1
  until count == index
    first_num, second_num = second_num, first_num + second_num
    count += 1
  end
  first_num
end

def fibonacci(n)
  return n if (0..1).include? n
  (fibonacci(n - 1) + fibonacci(n - 2))
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765
