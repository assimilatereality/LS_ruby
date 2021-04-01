def running_total(ary)
  ary2 = []
  ary.each_index { |x| ary2 << ary[x] + (x > 0 ? ary2[x - 1] : 0) }
  ary2
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

def running_total(array)
  array.each_with_object([]) do |i, ary|
    ary.empty? ? ary << i : ary << (ary[-1] + i)
  end
end

#ary = []
def running_total(array, ary = [])
  array.inject do |sum, n|
    if ary.empty?
      ary << sum
      ary << sum + n
    else
      ary << (ary[-1] + n)
    end
    ary
  end
end


p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []
