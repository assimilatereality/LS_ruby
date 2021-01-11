# conditional_loop.rb

i = 0
loop do
  i += 2
  next if i == 4

  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end
p i
