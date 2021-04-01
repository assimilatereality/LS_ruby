hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = 'aeiouAEIOU'.split('')
ary = []
hsh.each_value do |x|
  x.each do |word|
    word.chars.each do |ltr|
      ary << ltr if VOWELS.include?(ltr)
    end
    ary
  end
  ary
end
p ary
