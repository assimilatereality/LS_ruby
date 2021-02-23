name = 'Bob'
save_name = name
puts name.object_id
puts save_name.object_id
name = 'Alice'
puts name.object_id
puts save_name.object_id
hen = 'Henry'
puts name, save_name, hen
