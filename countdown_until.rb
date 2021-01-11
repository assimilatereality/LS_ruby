# frozen_string_literal: true

x = gets.chomp.to_i
until x.negative?
  puts x
  x -= 1
end

puts 'Done!'
