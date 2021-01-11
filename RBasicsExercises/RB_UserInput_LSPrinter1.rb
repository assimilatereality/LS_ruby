ans = ''

loop do
  puts 'How many lines should be printed?'
  ans = gets.chomp.to_i
  break if ans >= 3

  puts 'Your answer must be 3 or greater. Try again.'
end

while ans > 0
  puts 'Launch School is the best!'
  ans -= 1
end
