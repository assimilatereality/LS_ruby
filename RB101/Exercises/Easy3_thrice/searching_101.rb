require 'set'

ary = []
5.times do |_|
  puts "Enter a number"
  num = gets.chomp.to_i
  ary << num
end

puts "Enter a number to check for"
num = gets.chomp.to_i
ary2 = ary.dup.to_set
ary2 << num

if ary2.count == 5
  puts "The number #{num} appears in #{ary2.to_a}."
else
  puts "The number #{num} does not appear in #{ary}."
end

puts ary[1].object_id
index = ary2.find_index(ary[1])
puts ary2.to_a[index].object_id

