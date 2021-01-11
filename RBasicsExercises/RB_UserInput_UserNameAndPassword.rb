PWCONSTANT = 'houdini'
USERNAME = 'Bob'

loop do
  puts 'What is your name?'
  name = gets.chomp
  puts 'What is the password?'
  ans = gets.chomp
  break if ans == PWCONSTANT && name == USERNAME
  puts 'The credentials are not correct. Try again.'
end

puts 'Welcome to my web!'
