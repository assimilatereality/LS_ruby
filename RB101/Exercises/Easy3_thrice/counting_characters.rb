puts "Please write a word or multiple words:"
word = gets.chomp
str = word.split(' ').join('')
puts str
puts "There are #{str.size} characters in \"#{word}\"."

