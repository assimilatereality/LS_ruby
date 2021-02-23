print "Please write word or multiple words: "
words = gets.chomp
num = words.delete(' ').size

puts "There are #{num} characters in \"#{words}\"."
