def reverse(string)
  return string[0] if string.length == 1

  reverse(string[1, string.length - 1]) + string[0]
end

puts reverse("abcde")
