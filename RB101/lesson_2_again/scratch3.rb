def merge(array_1, array_2)
  p array_1[0].object_id
  p array_2[0].object_id
  array_1 | array_2
end

arr1, arr2 = ['hello'], ['hello', 'world']
p arr1[0].object_id
p arr2[0].object_id
merged = merge(arr1, arr2)
merged[0][0] = 'J'
p merged
p merged[0]
p merged[0].object_id
p merged
p arr1
p arr2
