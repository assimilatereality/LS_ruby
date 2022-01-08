#LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a
LETTERS = (('a'..'z').to_a << ('A'..'Z').to_a).flatten

p LETTERS
def word_sizes(str)
  ary = str.split
  hsh = Hash.new(0)
  ary.each do |word|
    ltr_count = 0
    word.chars.each { |char| ltr_count += 1 if LETTERS.include?(char) }
    hsh[ltr_count] += 1
  end
  hsh
end


p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}