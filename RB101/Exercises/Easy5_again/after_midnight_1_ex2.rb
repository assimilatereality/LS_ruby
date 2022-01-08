def time_of_day(num)
  hours, minutes = num.divmod(60)
  if num < 0
    hours = 24 + hours
    if hours < -24
      hours = hours % 24
    end
  elsif hours > 24
    hours = hours % 24
  end
  if hours.abs < 10
    hour = "0" + hours.to_s
  else
    hour = hours.to_s
  end
  if minutes < 10
    minute = "0" + minutes.to_s
  else
    minute = minutes
  end
  "#{hour}:#{minute}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
