def palindromic_number?(number)
  number == number.to_s.reverse.to_i
end

def palindromic_number?(int)
  int == int.digits.join.to_i #focus on what the #digits method already returns.
end

puts palindromic_number?(34543)
puts palindromic_number?(123210)
puts palindromic_number?(22)
puts palindromic_number?(5)
puts palindromic_number?(013)  #edge case -- how to fix??
