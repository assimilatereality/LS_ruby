def reverse(list)
  num = list.size
  count = 0
  ary = []
  while count < num
    ary.unshift(list[count])
    count += 1
  end
  ary
end

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

list = [1, 2, 3, 4]
new_list = reverse(list)
p list
p new_list
p list.object_id != new_list.object_id

