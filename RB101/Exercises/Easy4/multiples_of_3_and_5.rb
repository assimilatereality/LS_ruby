def multi_sum(number)
  ary = []
  (1..number).each { |x| (ary << x if x % 3 == 0 || x % 5 == 0) }
  ary.sum
end

def multi_sum(number)
  (0..number).inject do |sum, n|
    if n % 3 == 0 || n % 5 == 0
      sum + n
    else
      sum
    end
  end
end

p multi_sum(3) # == 3
p multi_sum(5) #== 8
p multi_sum(10) #== 33
p multi_sum(1000)# == 234168
