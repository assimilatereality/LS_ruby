def shout_out_to(name)
  name.upcase!
  #name.chars.each { |c| name2 << c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
