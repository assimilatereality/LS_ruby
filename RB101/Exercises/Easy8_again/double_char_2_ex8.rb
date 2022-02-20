def double_consonants(str)
  rst = ''
  letters = %w(b c d f g h j k l m n p q r s t v w x y z)
  str.chars.each do |ltr|
    if letters.include?(ltr.downcase)
      rst << ltr << ltr
    else
      rst << ltr
    end
  end
  rst
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
