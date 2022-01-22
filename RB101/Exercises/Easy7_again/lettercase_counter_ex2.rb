def letter_case_count(str)
  rst = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |ltr|
    x = ('a'..'z').include?(ltr)
    y = ('A'..'Z').include?(ltr)
    if x
      rst[:lowercase] += 1
    end
    if y
      rst[:uppercase] += 1
    end
  end
  rst[:neither] = str.length - rst[:lowercase] - rst[:uppercase]
  rst
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }
