def triangle(num)
  count = 1
  while count <= num
    puts ('*' * count).ljust(num, ' ')
    count += 1
  end
end

triangle(5)
