def center_of(str)
  if str.size.odd?
    mid = str.size / 2
    mid_str = str[mid]
  else
    mid = str.size / 2 - 1
    mid_str = "#{str[mid]}#{str[mid + 1]}"
  end
  mid_str
end

puts center_of('I love ruby') #== 'e'
puts center_of('Launch School') #== ' '
puts center_of('Launch') #== 'un'
puts center_of('Launchschool') #== 'hs'
puts center_of('x') #== 'x'
