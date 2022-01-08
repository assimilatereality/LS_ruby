MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(str)
  arr = str.split(':')
  total = arr[0].to_i * MINUTES_PER_HOUR + arr[1].to_i
  if total == MINUTES_PER_DAY
    total = 0
  end
  total
end

def before_midnight(str)
  total = MINUTES_PER_DAY - after_midnight(str)
  if total == MINUTES_PER_DAY
    total = 0
  end
  total
end

p after_midnight('00:00') #== 0
p before_midnight('00:00')# == 0
p after_midnight('12:34') #== 754
p before_midnight('12:34')# == 686
p after_midnight('24:00') #== 0
p before_midnight('24:00')# == 0
