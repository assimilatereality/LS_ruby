5.times do |index|
  index == 2 ? (puts index; break) : (puts index)
end

5.times do |index|
  puts index
  break if index == 4
end

5.times do |index|
  puts index
  break if index < 7
end
