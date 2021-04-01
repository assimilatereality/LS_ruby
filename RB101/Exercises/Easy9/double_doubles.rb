def twice(num)
  str_num = num.digits.reverse
  len = num.abs.digits.count
  half_len = len / 2
  rtn_this(len, str_num, num, half_len)
end

def rtn_this(len, str_num, num, half_len)
  if len.even?
    left_half = str_num[0..(half_len - 1)]
    right_half = str_num[half_len..-1]
    left_half == right_half ? str_num.join.to_i : num * 2
  else
    num * 2
  end
end

p twice(4) #== 8
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
