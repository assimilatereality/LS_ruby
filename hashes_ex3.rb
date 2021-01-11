hsh = { name: 'bob', age: 48, wife: 'jane', wife_age: 31 }
hsh.each_key { |k| puts k }
hsh.each_value { |v| puts v }
hsh.each { |k, v| puts "#{k}: #{v}" }
p hsh.values
p hsh.keys
p hsh.each_key
