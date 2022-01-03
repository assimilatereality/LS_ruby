DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  str = []
  number.digits.each { |num| str.unshift(DIGITS[num]) }
  str.join
end

def signed_integer_to_string(number)
  if number == 0
    "#{integer_to_string(number)}"
  elsif number < 0
    number = 0 - number
    "-#{integer_to_string(number)}"
  else
    "+#{integer_to_string(number)}"
  end
end


p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(0) #== '0'
p signed_integer_to_string(-123) #== '-123'

