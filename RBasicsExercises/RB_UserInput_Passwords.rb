PWCONSTANT = 'houdini'

loop do
  puts 'What is the password?'
  ans = gets.chomp
  break if ans == PWCONSTANT
end

puts 'Welcome to my web!'
