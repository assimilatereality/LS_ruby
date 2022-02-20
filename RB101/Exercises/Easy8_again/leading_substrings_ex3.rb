def leading_substrings(str)
  rst = []
  new_str = ''
  str.chars.each do |ltr|
    rst << new_str += ltr
  end
  rst
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
