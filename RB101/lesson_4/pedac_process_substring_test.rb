def substrings(str)
  result = []
  starting_index = 0
  num_chars = 3
  while starting_index <= str.length - 2
    p str.slice(starting_index, num_chars)
    starting_index += 1
  end
end

substrings("abc")

# Expected output:
# "ab"
# "bc"
