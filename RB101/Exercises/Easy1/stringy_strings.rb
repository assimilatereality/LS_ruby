def stringy(num)
  str = ''
  if num.even?
    (num / 2).times { |x| str.concat('10') }
    str
  else
    ((num - 1) / 2).times { |x| str << '10' }
    str << '1'
  end
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
