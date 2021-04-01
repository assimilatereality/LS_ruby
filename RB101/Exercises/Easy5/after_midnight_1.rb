MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(num)
  hour, minute = num.divmod(MINUTES_PER_HOUR )
  hour -= HOURS_PER_DAY * hour.div(HOURS_PER_DAY)
  "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"
end

#MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

#def time_of_day(delta_minutes)
#  delta_minutes =  delta_minutes % MINUTES_PER_DAY
#  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#  format('%02d:%02d', hours, minutes)
#end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
