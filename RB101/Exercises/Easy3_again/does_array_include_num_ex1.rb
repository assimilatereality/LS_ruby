def enter_numbers
  (1..5).map do |num|
    puts "Enter entry number #{num}: "
    gets.chomp.to_i
  end
end

def testing(last, entries)
  if entries.include?(last)
    puts "The number #{last} appears in #{entries}."
  else
    puts "The number #{last} does not appear in #{entries}."
  end
end

entries = enter_numbers

puts "Enter entry number 6: "
last = gets.chomp.to_i

testing(last, entries)
