def spin_me(str)
  p str.object_id
  new_str = str.split.each do |word|
    word.reverse!
  end.join(" ")
  p new_str.object_id
  new_str
end

p spin_me("hello world") # "olleh dlrow"
