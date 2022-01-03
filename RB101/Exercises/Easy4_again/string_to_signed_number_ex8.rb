DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(num)
  arr = num.chars.map { |char| DIGITS[char] }
  rst = 0
  arr.each { |elem| rst = rst * 10 + elem }
  rst
end

def string_to_signed_integer(str)
  if str.start_with?('+')
    str = str[1, str.size]
    string_to_integer(str)
  elsif str.start_with?('-')
    str = str[1, str.size]
    -string_to_integer(str)
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100