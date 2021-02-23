require 'yaml'

MESSAGES = YAML.load_file('rpssl.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts("=> #{message}")
end

CHOICES = {
  'r': 'rock',
  'p': 'paper',
  's': 'scissors',
  'l': 'lizard',
  'sp': 'spock'
}

CHOICE_OPTIONS = %w[r p s l sp]

VICTORY = {
  'rock': %w[scissors lizard],
  'paper': %w[rock spock],
  'scissors': %w[paper lizard],
  'lizard': %w[paper spock],
  'spock': %w[rock scissors]
}

VICTORIES_TO_WIN = 5

score = {
  player: 0,
  computer: 0
}

def update_score(match_winner, score)
  case match_winner
  when 'player'
    score[:player] += 1
  when 'computer'
    score[:computer] += 1
  else
    true
  end
end

def get_name
  name = ''

  loop do
    prompt(messages('name'))
    name = gets.chomp.capitalize
    break unless name.empty? || name =~ /\d/ || name[0] == ' '

    prompt(messages('valid_name'))
  end
  name
end

def valid_choice(choice)
  CHOICE_OPTIONS.include?(choice)
end

def get_player_choice
  choice = ''
  loop do
    prompt("What is your choice? Select one.")
    prompt(messages('choices'))
    choice = gets.chomp.downcase
    break if valid_choice(choice)
    prompt(messages('invalid_choice'))
  end
  choice
end

def key_to_value(input)
  CHOICES.fetch(input.to_sym)
end

def display_choices
  value_arrays = CHOICES.select { |_k, v| v }
  choices = value_arrays.to_a.map { |arr| arr[1][0] }
  choices.join(', ')
end

def display_round_result(user, computer)
  if VICTORY[user.to_sym].include?(computer)
    'player'
  elsif VICTORY[computer.to_sym].include?(user)
    'computer'
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

def input_a_key?(user_choice)
  key_to_value(user_choice) if CHOICES.key?(user_choice.to_sym)
end

# ==== main game loop ====
name = get_name
prompt("#{messages('salute')} #{name}")

loop do
  score[:player] = 0
  score[:computer] = 0
  loop do
    prompt(messages('intro').to_s)
    user_choice = get_player_choice
    user_choice = input_a_key?(user_choice)
    computer_choice = CHOICES.values.sample

    prompt(<<~MSG
    #{name} chose: #{user_choice.capitalize}
       Computer chose: #{computer_choice.capitalize}
    MSG
          )

    match_winner = display_round_result(user_choice, computer_choice)
    puts match_winner
    update_score(match_winner, score)

    prompt("PLAYER: #{score[:player]} vs. COMPUTER: #{score[:computer]}")
    break if score[:player] >= 5 || score[:computer] >= 5
  end
  answer = play_another?
  break if answer == 'n'
end
