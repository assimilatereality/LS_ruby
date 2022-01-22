def swapcase(str)
  char_ary = str.chars.map do |ltr|
    if ('A'..'Z').include?(ltr)
      ltr.downcase
    else
      ltr.upcase
    end
  end
  char_ary.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
