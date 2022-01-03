def multisum(num)
  arr = []
  (1..num).each do |n|
    if n % 15 == 0
      arr << n
    elsif n % 5 == 0
      arr << n
    elsif n % 3 == 0
      arr << n
    end
  end
  return arr.sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168
