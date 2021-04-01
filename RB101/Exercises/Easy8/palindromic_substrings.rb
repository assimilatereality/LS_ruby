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

def palindromes(string)
  rst = []
  ary = substrings(string)
  ary.each do |str|
    if str == str.reverse && str.size > 1
      rst << str
    end
    rst
  end
  rst
end

p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
p palindromes('knitting cassettes') #== [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#]
