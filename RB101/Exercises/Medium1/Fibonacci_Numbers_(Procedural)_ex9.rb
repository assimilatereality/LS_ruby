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

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
