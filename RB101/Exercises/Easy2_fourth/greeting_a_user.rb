puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop.upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
