def fizzbuzz(i, j)
  rst = []
  (i..j).each do |num|
    if num % 3 == 0 && num % 5 == 0
      rst << 'FizzBuzz'
    elsif num % 3 == 0
      rst << 'Fizz'
    elsif num % 5 == 0
      rst << 'Buzz'
    else
      rst << num
    end
  end
  rst.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
