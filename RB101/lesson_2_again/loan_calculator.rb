# get the loan amount
# get the APR
# get the loan duration
# calculate the monthly payment

def prompt(message)
  puts "==> #{message}"
end

prompt("Welcome to the Car Loan Calculator!")

loop do
  amount = ''
  loop do
    prompt('What loan amount in whole US Dollars do you want to sumulate?')
    amount = gets.chomp
    if amount.empty? || amount.to_f < 0
      prompt('The loan amount must be a positive integer. Enter the loan amount:')
    else
      break
    end
  end

  interest_rate = ''
  loop do
    prompt('What Annual Percentage Rate (APR) do you want to spec out?')
    prompt('Example: 5 for 5% or 2.5 for 2.5%')
    interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt('The interest rate must be a positive number.')
    else
      break
    end
  end

  loan_years = ''
  loop do
    prompt('What is the loan duration in years?')
    loan_years = gets.chomp
    if loan_years.empty? || loan_years.to_f < 0
      prompt('The loan duration must be a positive number of years.')
    else
      break
    end
  end

  interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = interest_rate / 12
  loan_months = loan_years.to_f * 12
  monthly_payment = amount.to_f *
                    (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_months)))
  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}.")
  prompt("Calculate another? (Y / N)")
  repeat = gets.chomp.downcase
  break if repeat != 'y'
end
prompt("Thank you for using the Car Loan Calculator!")
prompt("Good-bye")


# m = p * (j / (1 - (1 + j)**(-n)))
