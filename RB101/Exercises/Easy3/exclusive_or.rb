# def xor?(x, y)
#  return true if !x && y
#  return true if x && !y
#  false
# end

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)
