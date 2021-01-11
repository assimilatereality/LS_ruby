x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  x = y
  z = y
  puts "This is z: " + z.to_s
end
puts x
#puts z
