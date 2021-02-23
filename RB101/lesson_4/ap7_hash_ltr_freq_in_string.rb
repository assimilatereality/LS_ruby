statement = "The Flintstones Rock"

letters = statement.split('')
letters.delete(" ")
new_hash = {}
letters.each do |ltr|
  if new_hash.include?(ltr)
    new_hash[ltr] += 1
  else
    new_hash[ltr] = 1
  end
end
p new_hash

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
