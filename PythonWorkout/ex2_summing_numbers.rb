def mysum(*args)
  output = 0
  args.each do |number|
    output += number
  end
  output
end

puts(mysum(10, 20, 30, 40, -90))
puts(mysum(*[15, 25, 30, 40]))
