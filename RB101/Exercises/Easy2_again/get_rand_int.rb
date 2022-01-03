puts "What is your name? "
name = gets.chomp

def your_age(name)
  name = 'Teddy' if name == ''
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

your_age(name)

#'Teddy is 69 years old!'
