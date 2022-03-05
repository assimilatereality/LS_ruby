def lights(num)
  ary = []
  1.upto(Math.sqrt(num).to_i) do |i|
    ary << i**2
  end
  ary
end

p lights(5)
p lights(10)
p lights(1000)
