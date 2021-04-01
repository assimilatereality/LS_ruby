def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  ary = []
  # p string.chars
  string.chars.each do |char|
    if ALPHABET.include?(char)
      ary << char
    else
      ary << ' ' unless ary.last == ' '
    end
  end
  # p ary
  ary.join
end

p cleanup("---what's my +*& line?") #== ' what s my line '
