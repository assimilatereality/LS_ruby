def century(year)
  rst = year / 100 + 1
  rst -= 1 if year % 100 == 0
  rst.to_s + ending(rst)
end

def ending(rst)
  case
  when %w[11 12 13].include?(rst.to_s[-2..-1]) then 'th'
  when rst.to_s[-1] == '1' then 'st'
  when rst.to_s[-1] == '2' then 'nd'
  when rst.to_s[-1] == '3' then 'rd'
  else 'th'


  end
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'
