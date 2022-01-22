def multiply_list(ary1, ary2)
  ary1.map.with_index do |_, index|
    ary1[index] * ary2[index]
  end
end

def multiply_list(ary1, ary2)
  ary1.zip(ary2).map { |ary| ary[0] * ary[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
