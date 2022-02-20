def repeater(str)
  rst = ''
  str.chars.each do |ltr|
    rst << ltr + ltr
  end
  rst
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
