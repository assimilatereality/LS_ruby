def double_array(ary, index = 0)
  return if index >= ary.size

  ary[index] *= 2
  double_array(ary, index + 1)
end

ary = [1, 2, 3, 4, 5]

double_array(ary, 2)
p ary
