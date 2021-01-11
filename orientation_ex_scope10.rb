a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

#my_value(array)            # throws error
puts a

def my_value2(ary, a)       # local variable, shadow 'a'
  ary.each do |b|
    a += b                  # initialization, not reassignment
  end
end

my_value2(array, a)
puts a                      # 7
