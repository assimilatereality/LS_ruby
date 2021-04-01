def decrease(counter)
  counter - 1
end

counter = 10

counter.times do  #refactor
  puts counter
  counter = decrease(counter)  # bug fix
end

puts 'LAUNCH!'
