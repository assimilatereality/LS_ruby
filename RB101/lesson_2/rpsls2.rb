require 'yaml'

MESSAGES = YAML.load_file('rpsls.yml')

VICTORIES_TO_WIN = 3

#CHOICES = {
#  'r': 'rock',
#  'p': 'paper',
#  's': 'scissors',
#  'l': 'lizard',
# 'sp': 'spock'
#}



#KEYS_BEAT_VALUES = {
CHOICES = {
  'r': { 'rock': %w[scissors lizard] },
  'p': { 'paper': %w[rock spock] },
  's': { 'scissors': %w[paper lizard] },
  'l': { 'lizard': %w[paper spock] },
  'sp': { 'spock': %w[rock scissors] }
}

# Convert symbols to array of strings
CHOICE_OPTIONS = []
CHOICES.keys.each { |elem| CHOICE_OPTIONS << elem.to_s } # %w[r p s l sp]

score = {}

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts("=> #{message}")
end

def clear_screen
  system('clear') || system('cls')
end

def update_score(round_winner, score, name)
  case round_winner
  when name.to_s
    score[name.to_sym] += 1
  when 'Computer'
    score[:Computer] += 1
  else
    true
  end
end

def get_name
  name = ''
  loop do
    prompt(messages('name'))
    name = gets.chomp
    break unless name.empty? || name =~ /\d/ || name[0] == ' '

    prompt(messages('invalid_name'))
  end
  name.capitalize
end

def get_player_choice
  choice = ''
  loop do
    puts ""
    prompt(messages('get_choice'))
    prompt(messages('choices'))
    choice = gets.chomp.downcase
    break if CHOICES.key?(choice.to_sym)
    prompt(messages('invalid_choice'))
  end
  choice
end

def change_choice_to_word(user_choice)
  CHOICES.fetch_values(user_choice.to_sym)[0].keys.to_s
end

def set_round_result(user, computer, name)
  if KEYS_BEAT_VALUES[user.to_sym].include?(computer)
    name.to_s
  elsif KEYS_BEAT_VALUES[computer.to_sym].include?(user)
    'Computer'
  else
    'tie'
  end
end

def play_another?
  prompt(messages('do_again'))
  ans = gets.strip.downcase
  response(ans)
end

def response(ans)
  case ans
  when 'y', 'yes' then 'y'
  when 'n', 'no'  then 'n'
  else
    prompt(messages('invalid_confirmation'))
    play_another?
  end
end

def print_game_introduction
  clear_screen
  instruction_content = MESSAGES['game_instructions']
  puts format(instruction_content, VICTORIES_TO_WIN: VICTORIES_TO_WIN)

  CHOICES.each_pair do |_, value|
    value.each_pair do |k, v|
      puts "#{k.to_s.ljust(10,
                           '-')} beats #{v[0].rjust(10,
                                                    '-')} and #{v[1]}"
    end
  end
  puts ''
end

def print_greeting(name)
  clear_screen
  prompt("#{messages('salute')} #{name}")
  prompt(messages('intro').to_s)
end

def print_player_choices(name, user_choice, computer_choice)
  prompt(<<~MSG
      #{name} chose: #{user_choice.capitalize}
         Computer chose: #{computer_choice.capitalize}
  MSG
        )
end

def print_round_result(round_winner)
  sleep(1.5)
  puts ''
  if round_winner == 'tie'
    prompt("The round was a #{round_winner}.")
  else
    prompt("#{round_winner} Won the Round!")
  end
end

def print_scoreboard(name, score)
  sleep(1.5)
  puts "\n*****    SCOREBOARD    *****"
  prompt("#{name}: #{score[name.to_sym]} vs. Computer: #{score[:Computer]}")
end

def game_loop(score, name)
  loop do
    score[name.to_sym] = 0
    score[:Computer] = 0
    play_the_game(name, score)
    puts ""
    answer = play_another?
    break if answer == 'n'
  end
end

def play_the_game(name, score)
  loop do
    sleep(1.5)
    user_choice = change_choice_to_word(get_player_choice)
    user_choice = user_choice.class
    puts "user_choice is #{user_choice}"
    computer_choice = CHOICES.values.sample.keys[0].to_s
    puts "computer_choice is #{computer_choice}"
    clear_screen
    print_player_choices(name, user_choice, computer_choice)
    round_winner = set_round_result(user_choice, computer_choice, name)
    print_round_result(round_winner)
    update_score(round_winner, score, name)
    print_scoreboard(name, score)
    break if score[name.to_sym] >= VICTORIES_TO_WIN ||
             score[:Computer] >= VICTORIES_TO_WIN
  end
end

# ==== main: play the game ====
print_game_introduction
name = get_name
print_greeting(name)
game_loop(score, name)
