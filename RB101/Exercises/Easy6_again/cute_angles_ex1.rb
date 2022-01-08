DEGREE = "\xC2\xB0"

def dms(num)
  deg = num.div(1)
  minutes = ((deg - deg.to_i) * 60).round(2)
  seconds = ((minutes - minutes.to_i) * 60).round(0).to_s
  minutes = minutes.to_i.to_s
  "%(#{deg}#{DEGREE}#{minutes.rjust(2, '0')}'#{seconds.rjust(2, '0')}\")"
end

puts dms(30)# == %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")
