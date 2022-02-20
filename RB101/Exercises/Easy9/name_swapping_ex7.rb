def swap_name(str)
  ary = str.split(' ')
  "#{ary[1]}, #{ary[0]}"
end

def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
