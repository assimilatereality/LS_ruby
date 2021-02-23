array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
puts array1.object_id
puts array2.object_id
array1.each { |value| array2 << value }
puts array1[0].object_id
puts array2[0].object_id
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2
array3 = array2
puts array1.object_id
puts array2.object_id
puts array3.object_id
puts array1[0].object_id
puts array2[0].object_id
puts array3[0].object_id
array3[0] = 'yea-hah'
puts array1[0]
puts array1[0].object_id
puts array2[0]
puts array2[0].object_id
puts array3[0]
puts array3[0].object_id
puts array1[1].object_id
puts array2[1].object_id
