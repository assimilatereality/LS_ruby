def palindromic_number?(num)
  num2 = num.to_s.reverse.to_i
  num == num2
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
