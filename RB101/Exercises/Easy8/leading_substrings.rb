def leading_substrings(str)
  arr = []
  0.upto(str.size - 1) do |index|
    arr << str[0..index]
  end
  arr
end

def leading_substrings(words)
  new_array = []
  string = ''
  words.chars.each do |element|
    new_array << string += element
  end
  new_array
end

# Recursive -->
def leading_substrings(str, arr = [])
  if str.size > 1
    leading_substrings(str[0..str.size - 2], arr)
  end
  arr << str
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
