language = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
#puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[message][lang]
end

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system('clear') || system('cls')
end

def greeting(language)
  clear_screen
  prompt(messages(language, 'welcome'))
end

def get_language(lang)
  loop do
    lang = gets.chomp
    break if %w(1 2).include?(lang)
    prompt(messages(lang = 'en', 'valid_language_choice'))
  end
  lang
end

def language_choice(lang)
  case lang
  when '1'
    lang = 'en'
  else # (previously confirmed - '2' is the only other possible choice)
    lang = 'de'
  end
  lang
end

def get_name(lang)
  name = ''
  prompt(messages(lang, 'name'))
  loop do
    name = gets.strip.capitalize
    break unless name.empty? || name =~ /\d/ || name[0] == ' '

    prompt(messages('valid_name', lang))
  end
  name
end

def negative_response(answer)
  ans = %w[n no nein]
  ans.any? { |x| x.include?(answer) }
end

def get_operator(lang)
  operator = ''
  loop do
    prompt(messages(lang, 'operator_choice'))
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages(lang, 'invalid_operation'))
    end
  end
  operator
end

def valid_number?(num)
  /\A[+-]?(\d+)?(\.[\d]+)?\z/.match(num)
end

def get_number1(lang)
  number1 = ''
  loop do
    prompt(messages(lang, 'first_number'))
    number1 = gets.chomp

    if number1.empty?
      prompt(messages(lang, 'no_number'))
    elsif valid_number?(number1)
      break
    else
      prompt(messages(lang, 'invalid_number'))
    end
  end
  number1
end

def get_number2(lang, operator)
  number2 = ''
  loop do
    prompt(messages(lang, 'second_number'))
    number2 = gets.chomp

    if number2.empty?
      prompt(messages(lang, 'no_number'))
    elsif operator == "4" && number2.to_f.zero?
      prompt(messages(lang, 'zero_not_allowed'))
    elsif valid_number?(number2)
      break
    else
      prompt(messages(lang, 'invalid_number'))
    end
  end
  number2
end

def operation_to_message(lang, operator)
  case operator
  when '1'
    messages(lang, 'Adding')
  when '2'
    messages(lang, 'Subtracting')
  when '3'
    messages(lang, 'Multiplying')
  else # (previously confirmed - '4' is the only other possible choice
    messages(lang, 'Dividing')
  end
end

def calculations(operator, number1, number2)
  case operator
  when '1'
    number1.to_f + number2.to_f
  when '2'
    number1.to_f - number2.to_f
  when '3'
    number1.to_f * number2.to_f
  when '4'
    number1.to_f / number2.to_f
  end
end

def calc_another?(lang)
  prompt(messages(lang, 'do_again'))
  ans = gets.strip.downcase
  response(lang, ans)
end

def response(lang, ans)
  case ans
  when 'y', 'j', 'yes', 'ja' # j for German (Ja)
    'y'
  when /\A[nN]o?\Z/ # n or no
    'n'
  else
    prompt(messages(lang, 'invalid_confirmation'))
    calc_another?(lang)
  end
end

# ========================

clear_screen
greeting(language)
lang = get_language(language)
lang = language_choice(lang)
name = get_name(lang)
prompt("Hi #{name}!")
answer = 'y'

loop do # main loop
  break if negative_response(answer)
  operator = get_operator(lang)
  number1 = get_number1(lang)
  number2 = get_number2(lang, operator)
  prompt("#{operation_to_message(lang, operator)} the numbers #{number1} and #{number2}")
  result = calculations(operator, number1, number2)
  prompt("The result is #{result}")
  answer = calc_another?(lang)
  break if answer == 'n'
end

