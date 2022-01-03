statement = "The Flintstones Rock"

ary = statement.split('')
ary.delete(" ")
count = ary.tally

p ary
p count

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
p result
