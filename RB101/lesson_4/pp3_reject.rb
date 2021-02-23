ary = [1, 2, 3].reject do |num|
  # puts num
  puts num if num.odd?
  # num if num.even?
end
p ary
