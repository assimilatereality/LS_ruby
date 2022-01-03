def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid2(color)
  color == "blue" || color == "green"
end

def color(hue)
  p color_valid(hue)
  p color_valid2(hue)
end

color('magenta')
