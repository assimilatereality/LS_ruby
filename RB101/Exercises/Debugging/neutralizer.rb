#require 'pry'

def neutralize(sentence)
  words = sentence.split(' ')
  # words.each do |word|
  #  words.delete(word) if negative?(word)
  words.reject! { |word| negative?(word) }
  # end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
