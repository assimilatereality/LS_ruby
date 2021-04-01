def swap_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  ary = string.split.map { |word| swap_letters(word) }
  ary.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
