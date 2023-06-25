puts "Please enter a word or multiple words:"
str = gets.chomp
parse = str.split(" ").join("")
puts "There are #{parse.size} characters in \"#{str}\"."


