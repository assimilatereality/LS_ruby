def multiply_all_pairs(arr1, arr2)
  (arr1.product(arr2).map { |x, y| x * y }).sort
end

def multiply_all_pairs(a1, a2)
  a1.product(a2).map { |x| x.reduce(:*) }.sort
end

def multiply_all_pairs(a1, a2)
  a1.product(a2).map { |x| x.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
