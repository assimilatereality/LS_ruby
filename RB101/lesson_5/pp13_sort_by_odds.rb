arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by! do |sub_ary|
  sub_ary.select(&:odd?)
end

p arr
