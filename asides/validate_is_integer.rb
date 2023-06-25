# frozen_string_literal: true

def integer?(number)
  [                          # In descending order of likeliness:
    /^[-+]?[1-9]([0-9]*)?$/, # decimal
    /^0[0-7]+$/,             # octal
    /^0x[0-9A-Fa-f]+$/,      # hexadecimal
    /^0b[01]+$/              # binary
  ].each do |match_pattern|
    return true if self =~ match_pattern
  end
  false
end

def valid_number?(num)
  # /^[+-]?(\d+)?(\.\d+)?$/.match(num)   # int or float
  # num.to_i.to_s == num                 # int
  # /^[-+]?[1-9]([0-9]*)?$/.match(num) # int
  /^[-+]?[1-9](\d+)?$/.match(num) # int base 10
end

def what_number
  num = ''
  loop do
    puts 'What number?'
    num = gets.chomp
    break if valid_number?(num)

    puts 'invalid_number'
  end
  num
end

puts what_number
