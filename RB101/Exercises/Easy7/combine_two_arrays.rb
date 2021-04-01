def interleave(arr1, arr2)
  out = []
  arr1.each_with_index { |el, index| out << el << arr2[index] }
  out
end

def interleave2(arr1, arr2)
  (arr1.zip(arr2)).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], ['a', 'b', 'c'])
