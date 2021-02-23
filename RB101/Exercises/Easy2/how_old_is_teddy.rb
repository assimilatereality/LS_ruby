def get_name(name)
  name = 'Teddy' if name == ''
  age = rand(max = 20..200)
  puts "#{name} is #{age} years old!"
end

puts "What is your name?"
name = gets.chomp
get_name(name)
