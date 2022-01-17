def halvsies(ary)
  ary1 = []
  ary2 = []
  if ary.size.even?
    counter = 0
    while counter < ary.size / 2
      right_index = counter
      left_index = (ary.size / 2) + counter
      ary1 << ary[right_index]
      ary2 << ary[left_index]
      counter += 1
    end
  else
    counter = 0
    while counter <= ary.size / 2
      right_index = counter
      left_index = (ary.size / 2) + counter + 1
      ary1 << ary[right_index]
      ary2 << ary[left_index]
      counter += 1
    end
    ary2.pop
  end
  ary3 = ary1, ary2
  ary3
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
