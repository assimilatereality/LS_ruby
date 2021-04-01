def leading_substrings(str)
  arr = []
  0.upto(str.size - 1) do |index|
    arr << str[0..index]
  end
  arr
end

def substrings(string)
  arr = []
  (0...string.size).each do |index|
    substring = string[index..-1]
    arr.concat(leading_substrings(substring))
  end
  arr
end

#p leading_substrings('abcde')
p substrings('abcde') == [
 'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
