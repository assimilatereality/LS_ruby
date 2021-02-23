print "What is your name? "
name = gets.chomp
# ary = name.split('')
if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
