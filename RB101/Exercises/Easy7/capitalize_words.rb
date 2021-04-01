def word_cap(string)
  arr = string.split(' ')
  arr.each { |word| word.capitalize! }
  arr.join(' ')
end

def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

# Further Exploration
def word_cap(string)
  words = string.downcase.split.map do |word|
    if word[0] == '"'
      "#{word[0]}#{(word[1].ord - 32).chr}#{word[2..-1]}"
    else
      "#{(word[0].ord - 32).chr}#{word[1..-1]}"
    end
  end
  words.join(' ')
end

def word_cap(string)
  words = string.downcase.split.map do |word|
    word[0].upcase + word[1..-1]
  end
  words.join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
