def penultimate(str)
  ary = str.split
  ary[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
