x = [1, 2, 3]
hash = { x => 'array' }
p hash
x << 4
# p hash == { [1, 2, 3, 4] => 'array' } # true
# p x # [1, 2, 3, 4]
# x = 5
# p hash == { [1, 2, 3, 4] => 'array' } # true

p hash.key('array') # [1, 2, 3, 4]
hash.key('array') << 5
p hash == { [1, 2, 3, 4, 5] => 'array' } # true
p hash.key('array')
# p hash.value?('array')
p hash.keys
p hash[hash.key('array')]
p hash[[1, 2, 3, 4, 5]]
p hash
