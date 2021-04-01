arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_array = arr.map do |ary|
  ary.each do |el|
    if el.to_s.to_i == el
      ary.sort!.reverse!
    else
      ary.sort!.reverse!
    end
  end
end

new_array = arr.map do |ary|
  ary.sort.reverse
end

new_array = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

p new_array
