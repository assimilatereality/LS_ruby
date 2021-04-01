def repeater(str)
  str.chars.map do |char|
    char * 2
  end.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
