DIGITS1 = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string1(number)
  str = []
  number.digits.each { |num| str << DIGITS1[num] }
  str.reverse.join
end

DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string1(4321) #== '4321'
p integer_to_string1(0) #== '0'
p integer_to_string1(5000) #== '5000'
p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'
