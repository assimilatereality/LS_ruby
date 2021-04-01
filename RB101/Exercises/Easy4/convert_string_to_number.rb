DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570

HEXES = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
  'f' => 15
}

def hexadecimal_to_integer(hex)
  hex.downcase!
  ary = []
  hexes = hex.chars.map { |char| HEXES[char] }
  hexes.each_with_index { |item, index| ary << item * (16**(hexes.length - index - 1)) }
  ary.sum
end

p hexadecimal_to_integer('4D9f') #== 19871
