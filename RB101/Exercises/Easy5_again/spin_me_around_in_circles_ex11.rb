

def spin_me(str)
  p str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

same_obj = spin_me("hello world") # "olleh dlrow"
p same_obj.object_id
