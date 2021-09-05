def prompt(message)
  puts "=> #{message}"
end
# loan_amount = 0

def get_loan_amount(loan_amount)
  prompt("What loan amount in US Dollars do you want to simulate?")
  loop do
    loan_amount = gets.strip
    if loan_amount.empty? || loan_amount.to_f <= 0
      prompt("The loan amount must be a positive number. Enter a loan amount: ")
    else
      break
    end
    # loan_amount
  end
  loan_amount
end

def get_interest_rate(annual_percentage_rate)
  prompt('What Annual Percentage Rate (APR) do you want to spec out?')
  prompt('(Example: 5 for 5% or 2.5 for 2.5%)')
  loop do
    annual_percentage_rate = gets.strip
    if annual_percentage_rate.empty? || annual_percentage_rate.to_f < 0
      prompt("The interest rate must be a positive number.")
    else
      break
    end
    # annual_percentage_rate
  end
  annual_percentage_rate
end

def get_loan_duration(loan_years)
  prompt("What is the loan duration in years?")
  loop do
    loan_years = gets.strip
    if loan_years.empty? || loan_years.to_f < 0
      prompt("The loan duration must be a positive number of years.")
    else
      break
    end
    # loan_years
  end
  loan_years
end

def calc_another?
  prompt("Do you want to perform another calculation? [y/n]")
  ans = gets.strip.downcase
  response(ans)
end

def response(ans)
  case ans
  when 'y', 'yes'
    'y'
  when 'n', 'no'
    'n'
  else
    prompt("Your answer is not recognized. Please answer 'yes' or 'no'.")
    calc_another?
  end
end

prompt("Welcome to the Car Loan Calculator!")
loop do
  loan_amount = get_loan_amount(loan_amount).to_f
  annual_percentage_rate = get_interest_rate(annual_percentage_rate).to_f / 100
  monthly_percentage_rate = annual_percentage_rate / 12
  loan_years = get_loan_duration(loan_years).to_f
  loan_months = loan_years * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_percentage_rate /
                      (1 - (1 + monthly_percentage_rate)**(-loan_months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")
  answer = calc_another?
  break if answer == 'n'
end

prompt("Thank you for using the Car Loan Calculator!")
prompt("Good bye!")
