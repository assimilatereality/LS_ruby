a = "Xyzzy"

def my_value(b)
  b[2] = '-'
  b
end

puts my_value(a) # Xy-zy
puts a # Xy-zy
