# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator2_messages.yaml')

def messages(message)
  MESSAGES[message]
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
end

# def valid_number?(num)
#   num.to_i != 0
# end

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

def valid_number?(obj)
  obj = obj.to_s unless obj.is_a? String
  # /^[-+]?[1-9](\d+)?$/.match(obj)
  /^[+-]?(\d+)?(\.\d+)?$/.match(obj)
end

def get_operator
  operator = ''
  loop do
    prompt(messages('operator_choice'))
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('invalid_operation'))
    end
    operator
  end
end


def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# prompt("Welcome to Calculator! Enter your name:")
greeting
name = get_name



# prompt("Hi #{name}!")
prompt("#{messages('salutation')} #{name}!")

loop do # main loop
  operator = get_operator
  number0 = ''
  number1 = number0
  number2 = number0

  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      puts "Hmm...that doesn't look like a valid number."
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      puts "Hmm...that doesn't look like a valid number."
    end
  end






  prompt("#{operation_to_message(operator)} the two numbers ...")

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

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Y to calculate again.)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good-bye.")
