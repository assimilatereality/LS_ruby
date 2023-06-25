str = "The Flintstones Rock"
(0..9).each do |i|
  puts str.rjust(str.size + i, ' ')
end
