def countdown(x)
  if x < 0
    x
  else
    puts x
    x -= 1
    countdown(x)
  end
end

countdown(5)
