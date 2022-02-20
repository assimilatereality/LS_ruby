def negative(num)
  case 
  when num.negative? then num
  when num.zero? then 0
  when num.positive? then -num
  end
end

def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
