def word_to_digit(str)
  sentence = str.split('. ')
  p sentence
  sentence.map! do |sent|
    ary = sent.split
    rtn = ary.map do |word|
      case word
      when 'one' then '1'
      when 'two' then '2'
      when 'three' then '3'
      when 'four' then '4'
      when 'five' then '5'
      else word
      end
    end
    rtn.join(' ')
  end
  sentence.join('. ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
#== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
