def oddities(ary)
  tmp = []
  ary.map.with_index { |x, i| tmp << x if i.even? }
  tmp
end

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

def oddities(ary)
  ary.reject { |item| ary.index(item).odd? }
end

p oddities([1, 2, 3, 4, 'a', 'd', 'g'])
p oddities(['abc', 'def'])
p oddities([1, 2, 3, 4, 5, 6])
p oddities([])
p oddities([123])
