require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

language = 'en'

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
  else # (previously checked - '2' is the only other possible choice)
    lang = 'de'
  end
  lang
end

def get_name(lang)
  name = ''

  loop do
    prompt(messages(lang, 'name'))
    name = gets.chomp.capitalize
    break unless name.empty? || name =~ /\d/ || name[0] == ' '

    prompt(messages(lang, 'valid_name'))
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

def empty_response(lang, num)
  if num.empty?
    prompt(messages(lang, 'no_number'))
    true
  end
end

def denominator_zero(lang, number1, operator, num)
  if !(number1.empty?) && operator == "4" && num.to_f.zero?
    prompt(messages(lang, 'zero_not_allowed'))
    true
  end
end

def get_number(lang, operator, number1)
  num = ''
  loop do
    prompt(messages(lang, 'number'))
    num = gets.chomp
    next if empty_response(lang, num)
    next if denominator_zero(lang, number1, operator, num)
    break if valid_number?(num)

    prompt(messages(lang, 'invalid_number'))
  end
  num
end

def operation_to_message(lang, operator)
  case operator
  when '1'
    messages(lang, 'Adding')
  when '2'
    messages(lang, 'Subtracting')
  when '3'
    messages(lang, 'Multiplying')
  when '4'
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
  when 'n', 'no', 'nein' # n or no or nein for German
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
prompt("#{messages(lang, 'salute')} #{name}")

loop do # main loop
  operator = get_operator(lang)
  number1 = ''
  number1 = get_number(lang, operator, number1)
  number2 = get_number(lang, operator, number1)
  prompt("#{operation_to_message(lang, operator)}#{number1} & #{number2}")
  result = calculations(operator, number1, number2)
  prompt("#{messages(lang, 'result')} #{result.to_s.sub(/\.0$/,'')}")
  answer = calc_another?(lang)
  break if answer == 'n'
  clear_screen
end

prompt("#{messages(lang, 'closing_message')} #{name}.")
prompt(messages(lang, 'bye'))
