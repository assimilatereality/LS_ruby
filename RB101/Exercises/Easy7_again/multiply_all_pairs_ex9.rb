def multiply_all_pairs(ary1, ary2)
  ary = []
  ary1.each do |num|
    ary2.each { |x| ary << num * x }
  end
  ary.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
