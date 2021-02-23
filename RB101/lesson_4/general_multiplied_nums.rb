def general_multiplied_numbers!(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    #current_number = numbers[counter]
    #numbers[counter] = current_number * multiplier
    # numbers[counter] = numbers[counter] * 2
    numbers[counter] *= multiplier

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts "What is the multiplier?"
multiplier = gets.chomp.to_i
my_numbers = general_multiplied_numbers!(my_numbers, multiplier) # => [2, 8, 6, 14, 4, 12]
p my_numbers

