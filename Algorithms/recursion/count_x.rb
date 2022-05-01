def count_x(string)
  # Base case:
  #if string.length == 1
  #  if string[0] == "x"
  #    return 1
  #  else
  #    return 0
  #  end
  #end
  return 0 if string.length.zero?

  if string[0] == 'x'
    1 + count_x(string[1, string.length - 1])
  else
    count_x(string[1, string.length - 1])
  end
end

puts count_x('axbxcxd')
