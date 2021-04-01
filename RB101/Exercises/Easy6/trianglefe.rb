def triangle(num, base_on_bottom, justified_side)
  arr = (1..num).to_a
  arr = arr.reverse unless base_on_bottom
  print_triangle(arr, num, justified_side)
end

def print_triangle(arr, num, justified_side)
  if justified_side == 'left'
    arr.each { |i| puts ('*' * (i)).ljust(num) }
  else
    arr.each { |i| puts ('*' * (i)).rjust(num) }
  end
end

triangle(4, true, 'left')
triangle(4, true, 'right')
triangle(4, false, 'left')
triangle(4, false, 'right')
