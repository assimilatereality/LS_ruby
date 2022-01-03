def reverse_words(string)
  ary = string.split(' ')
  ary2 = []
  ary.each do |word|
    if word.size >= 5
      ary2.push(word.split('').reverse.join(''))
    else
      ary2.push(word)
    end
  end
  ary2.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
