def stringy(num)
  binary = ""
  while num > 0
    binary << '1'
    num -= 1
    if num > 0
      binary << '0'
      num -= 1
    end
  end
  binary
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
