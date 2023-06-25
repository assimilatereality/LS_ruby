a = 7
array = [1, 2, 3]

def my_value(ary, a)
  ary.each do |b|
    #p b
    # p a
    a += b
    p a # 8, 10, 13
  end
end

my_value(array, a)
puts a # 7
