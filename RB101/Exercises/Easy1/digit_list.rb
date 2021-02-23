def digit_list(num)
  p num.to_s.chars.map(&:to_i)
  p(num.to_s.chars.map{ |char| char.to_i })
end

puts digit_list(12345)
