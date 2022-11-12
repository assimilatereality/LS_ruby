def stringy(num)
  count = 0
  str = ''
  until count == num
    count += 1
    count.odd? ? str << '1' : str << '0'
  end
  str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
