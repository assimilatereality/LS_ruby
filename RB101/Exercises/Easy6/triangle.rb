def triangle(num)
  arr = (1..num).to_a
  arr.each { |i| puts ('*' * (i)).rjust(num) }
end

triangle(4)

def triangle(num)
  arr = (1..num).to_a.reverse
  arr.each { |i| puts ('*' * (i)).rjust(num) }
end

triangle(4)

def triangle(num)
  arr = (1..num).to_a
  arr.each { |i| puts ('*' * (i)).ljust(num) }
end

triangle(4)

def triangle(num)
  arr = (1..num).to_a.reverse
  arr.each { |i| puts ('*' * (i)).ljust(num) }
end

triangle(4)

def trianglefe(num, reversed, side)
  arr = (1..num).to_a
  arr = arr.reverse if reversed
  if side == left
    arr.each { |i| puts ('*' * (i)).ljust(num) }
  else
    arr.each { |i| puts ('*' * (i)).rjust(num) }
  end

end

trianglefe(4, true, left)
trianglefe(4, true, right)
trianglefe(4, false, left)
trianglefe(4, false, right)


def triangle(number, reversed, side)
  lines = []
  while lines.size < number do
    lines.last ? lines << lines.last + '*' : lines << '*'
  end

  lines.reverse! if reversed
  lines.each do |line|
    puts side == 'left' ? line : line.rjust(number)
  end
end

triangle(5, true, 'left')
triangle(5, true, 'right')
triangle(5, false, 'left')
triangle(5, false, 'right')


