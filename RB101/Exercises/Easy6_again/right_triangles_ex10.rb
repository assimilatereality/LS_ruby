def triangle(num)
  ary = (1..num).to_a
  ary.each { |x| puts ('*' * x).ljust(num) }
end

def triangle2(num)
  ary = (1..num).to_a.reverse
  ary.each { |x| puts ('*' * x).ljust(num) }
end

triangle(5)
triangle2(5)

