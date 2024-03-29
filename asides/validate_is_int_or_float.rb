# frozen_string_literal: true

def number?(obj)
  obj = obj.to_s unless obj.is_a? String
  /^[+-]?\d+(\.\d+)?$/.match(obj)
end

puts 'Enter a number:'
number = nil
loop do
  number = gets.chomp
  break if number?(number)

  puts 'That is not a number.'
end

puts "#{number} is indeed a number."
