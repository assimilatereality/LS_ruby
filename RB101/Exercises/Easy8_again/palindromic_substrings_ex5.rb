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

def palindromes(str)
  a = substrings(str)
  b = []
  a.each do |elem|
    if elem == elem.reverse && elem.size > 1
      b << elem
    end
    b
  end
  b
end


p palindromes('abcd') == []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
