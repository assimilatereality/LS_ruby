def xor?(x, y)
  #if x == y
  #  false
  #else
  #  true
  #end
  x == y ? false: true
end



p xor?(5.even?, 4.even?)# == true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false