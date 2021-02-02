LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system('clear') || system('cls')
end

def greeting
  clear_screen
  prompt(messages('welcome'))
  get_language
end

def get_language
  lang = ' '
  loop do
    lang = gets().chomp()
    break if %w(1 2).include?(lang)
    prompt(messages('valid_language'))
  end
  lang
end

def language_choice(lang)
  case lang
  when '1'
    lang = 'en'
  when '2'
    lang = 'de'
  end
  lang
end

def valid_number?(num)
  /\A[+-]?(\d+)?(\.[\d]+)?\z/.match(num)
end

def operation_to_message(op)
  action = case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           when '4'
             'Dividing'
           end

  action
end

greeting

lang = gets.chomp

def get_name(lang)
  name = ''
  prompt(messages('name', lang))
  loop do
    name = gets.strip.capitalize
    break unless name.empty?() || name =~ /\d/ || user_name[0] == ' '

    prompt(messages('valid_name', lang))
  end
  name
end

name = get_name(lang)

prompt("Hi #{name}!")

loop do # main loop

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator_choice'])
    end
  end

  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp

    if number1.empty?
      prompt(MESSAGES['no_number'])
    elsif valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp

    if number2.empty?
      prompt(MESSAGES['no_number'])
    elsif operator == "4" && number2.to_f == 0.0
      prompt(MESSAGES['zero_not_allowed'])
    elsif valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...#{number1} and #{number2}")

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['do_again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['closing_message'])
