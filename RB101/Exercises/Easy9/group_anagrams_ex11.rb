
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

hsh = {}
words.each do |word|
  ltrs = word.chars.sort.join
  if hsh.keys.include?(ltrs)
    hsh[ltrs].push(word)
  else
    hsh[ltrs] = [word]
  end
  hsh
end

p hsh
