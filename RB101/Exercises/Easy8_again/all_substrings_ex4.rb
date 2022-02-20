def leading_substrings(str2)
  rst = []
  new_str = ''
  str2.chars.each do |ltr|
    rst << new_str += ltr
  end
  rst
end

def substrings(str)
  count = 0
  ary = []
  while count <= (str.size - 1)
    x = leading_substrings(str[count..(str.size - 1)])
    count += 1
    ary << x
    ary
  end
  ary.flatten
end

p substrings('abcde') #== [
#  'a', 'ab', 'abc', 'abcd', 'abcde',
#  'b', 'bc', 'bcd', 'bcde',
#  'c', 'cd', 'cde',
#  'd', 'de',
#  'e'
#]
