hash = { 'x' => 'array' }
p hash
p hash['x']

y = []
hsh = { y => 'abc' }
p hsh
p hsh[[]]

z = ['a', 'b']
p z.object_id
hsh2 = { z => 'def' }
hsh2.each do |k, _|
  p k
  p k.object_id
end
# z << 'c'
p z
p hsh2
p hsh2[z]
p hsh2[['a', 'b']]
p hsh2[['a', 'b', 'c']]
q = hsh2[['a', 'b']]
p q
p z == hsh2.keys.flatten
hsh2.each do |k, v|
  p v
  p k
  p k.object_id
end
p y.size
p z.size
x = ([1, 2, 3].push([4, 5, 6], [44, [7]])).flatten
p x
p x.pop
p x