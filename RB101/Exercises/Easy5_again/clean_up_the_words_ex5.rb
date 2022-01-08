LETTERS = ('a'..'z').to_a

def cleanup(str)
  rst = []
  str.chars.each do |char|
    if LETTERS.include?(char)
      rst << char
    else
      rst << ' ' unless rst.last == ' '
    end
  end
  rst.join
end

p cleanup("---what's my +*& line?") #== ' what s my line '
