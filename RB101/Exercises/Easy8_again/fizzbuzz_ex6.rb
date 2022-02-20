def fizzbuzz(num1, num2)

  num1.upto(num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      print 'FizzBuzz'
    elsif num % 3 == 0
      print 'Fizz'
    elsif num % 5 == 0
      print 'Buzz'

    else
      print num
    end
  end
end


p fizzbuzz(1, 15)  #-> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

