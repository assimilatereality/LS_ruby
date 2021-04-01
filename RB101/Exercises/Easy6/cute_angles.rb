DEGREE = "\xC2\xB0"

def dms(deg)
  deg = deg % 360 if deg >= 360 # for Further Exploration solution
  minutes = ((deg - deg.to_i) * 60).round(2)
  seconds = ((minutes - minutes.to_i) * 60).round(0)
  deg = deg.div(1)
  deg = deg.to_s
  minutes = minutes.div(1).to_s
  seconds = seconds.div(1).to_s
  "%(#{(deg)}#{DEGREE}#{(minutes).rjust(2, '0')}'#{(seconds).rjust(2, '0')}\")"
end

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) #== %(40°00'00")
puts dms(-40) #== %(320°00'00")
puts dms(-420) #== %(300°00'00")
