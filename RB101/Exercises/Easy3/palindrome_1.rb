def palindrome?(str)
  str == str.reverse
end

def ary_palindrome?(ary)
  ary == ary.reverse
end

def palindromes?(input)
  (input == input.reverse) || (input.join == input.join.reverse)
rescue
  input == input.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')
puts ary_palindrome?([1, 2, 3])
puts ary_palindrome?(['a', 'b', 'a'])
puts ary_palindrome?([1, 2, 1])
puts palindromes?('madam')
puts palindromes?('Madam')
puts palindromes?([1, 2, 3])
puts palindromes?(['a', 'b', 'a'])
puts palindromes?([1, 2, 1])
