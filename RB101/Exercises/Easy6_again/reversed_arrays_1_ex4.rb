def reverse!(ary)
  counter = 0
  while counter < ary.length / 2
    right_index = counter
    left_index = (-1 - counter)
    ary[right_index], ary[left_index] = ary[left_index], ary[right_index]
    counter += 1
  end
  ary
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

