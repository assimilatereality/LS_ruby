# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    p fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(3)
