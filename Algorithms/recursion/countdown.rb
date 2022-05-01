def countdown(number)
  number.downto(0) do |i|
    puts i
  end
end

countdown(10)

def countdown(number)
  puts number
  return if number.zero?

  countdown(number - 1)
end

countdown(5)
