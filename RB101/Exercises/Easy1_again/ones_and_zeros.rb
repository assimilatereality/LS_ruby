def stringy(num)
  numbers = []
  if num.even?
    ((num / 2).times { numbers.push('10') }).to_s
    p numbers.join('')
  else
    (((num - 1) / 2).times { numbers.push('10') }).to_s
    p numbers.push('1').join('')
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
