def reverse_words(str)
  ary = str.split
  ary2 = []
  ary.each do |word|
    if word.size >= 5
      ary2 << word.reverse
    else
      ary2 << word
    end
  end
  ary2.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
