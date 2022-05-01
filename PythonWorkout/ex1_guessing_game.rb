#import random

def guessing_game
  num = rand(101)
  puts 'What number was produced?  '
  guess = gets.chomp.to_i
  loop do
    if guess == num
      puts 'Just right'
      break
    elsif guess > num
      puts 'Too high'
    else
      puts 'Too low'
    end
    puts 'Guess again:  '
    guess = gets.chomp.to_i
  end
end

guessing_game()
