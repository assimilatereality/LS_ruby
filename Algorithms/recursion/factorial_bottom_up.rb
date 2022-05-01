def factorial(n, i=1, product = 1)
  return product if i > n

  factorial(n, i + 1, product * i)
end

puts factorial(4)
