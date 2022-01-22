def interleave(ary1,ary2)
  num = ary1.length - 1
  ary3 = []
  until num < 0
    ary3.unshift(ary1[num], ary2[num])
    num -= 1
  end
  ary3
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
