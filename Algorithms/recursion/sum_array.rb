def sum(ary)
  return ary[0] if ary.length == 1

  ary[0] + sum(ary[1, ary.length - 1])
end

ary = [1, 2, 3, 4, 5]

puts sum(ary)
