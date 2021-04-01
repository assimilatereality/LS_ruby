def letter_case_count(string)
  hsh = {}
  hsh[:lowercase] = string.chars.count { |char| char =~ /[a-z]/ }
  hsh[:uppercase] = string.chars.count { |char| char =~ /[A-Z]/ }
  hsh[:neither] = string.chars.count { |char| char =~ /[^a-zA-Z]/ }
  hsh
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }
