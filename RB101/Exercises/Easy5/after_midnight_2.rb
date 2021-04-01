MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def remove_days(ary)
  if ary[0].to_i * 60 >= 1440
    days = (ary[0].to_i * MINUTES_PER_HOUR).divmod(1440)
    ary[0] = (ary[0].to_i * MINUTES_PER_HOUR) - days[0] * 1440
  end
end

def after_midnight(time)
  ary = time.split(':')
  remove_days(ary)
  ary[0].to_i * MINUTES_PER_HOUR + ary[1].to_i
end

def before_midnight(time)
  ary = time.split(':')
  remove_days(ary)
  if ary[0].to_i == 0
    ary[1].to_i
  else
    MINUTES_PER_DAY - after_midnight(time)
  end
end


def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0
p after_midnight('1:15') #== 0
p before_midnight('1:15') #== 0
