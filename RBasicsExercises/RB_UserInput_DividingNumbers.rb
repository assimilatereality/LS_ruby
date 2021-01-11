def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num1 = nil
num2 = nil

loop do
  puts 'Provide an integer for the numerator.'
  num1 = gets.chomp

  break if valid_number?(num1)

  puts '>> The number provided is not a valid number.'
end

loop do
  puts 'Provide an integer for the denominator.'
  num2 = gets.chomp
  break if num2.to_i != 0 && valid_number?(num2)

  puts 'The second number cannot be 0.'
end

puts "The 1st, #{num1}, divided by the 2nd, #{num2} = #{num1.to_i / num2.to_i}"


