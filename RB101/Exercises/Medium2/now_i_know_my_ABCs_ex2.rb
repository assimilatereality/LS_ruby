def block_word?(str)
  hsh = ((('a'..'m').to_a).zip(('n'..'z').to_a)).to_h
  p hsh
  word = str.downcase
  ary = []
  word.each_char do |char|
    p "printing char #{char}"
    p "printing ary #{ary}"
    p "printing hash key #{ary.include?(char)}"
    p "printing included in array? #{ary.include?(char)}"
    if ary.include?(char)
      p "line 10 include is true"
      return false
    else
      p "line 13 char is #{char}"
      ary << char
      p "line 15 printing else #{ary}"
    end
    p "line 19 char = #{char}; hsh.key(char) = #{hsh.key(char)}"
    if hsh.key?(char)
      p "line 20 hsh.key?(char) = #{hsh.key?(char)}"
      vu = hsh.values_at(char)[0]
      p "key: #{char} value: #{vu}"
      p word
      if word.include?(vu)
        p "line 25 printing false"
        return false
      end
    elsif word.include?(hsh.key(char))
      p "printing false"
      return false
    else
      p "line 29 printing true"
      #return true
    end
  end
end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('bapb') #== false
p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
