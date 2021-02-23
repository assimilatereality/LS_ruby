def short_long_short(sent1, sent2)
  sent1.length > sent2.length ? sent2 + sent1 + sent2 : sent1 + sent2 + sent1
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
