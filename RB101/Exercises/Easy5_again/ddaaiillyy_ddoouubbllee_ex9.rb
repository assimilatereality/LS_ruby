def crunch(str)
  new_str = []
  str.chars.each_with_index do |ltr, index|
    new_str << ltr unless str[index] == str[index + 1]
  end
  new_str.join
end


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg')# == 'g'
p crunch('a') #== 'a'
p crunch('') #== ''
