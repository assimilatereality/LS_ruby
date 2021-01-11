a = [1, 2, 'bob', 4.2, %w[d e f]]

a.push('f')
a << 'bob'
a << 'e'
puts a
puts a[4][1]
a.pop
puts a
puts a.delete_at(1)
puts a.delete(4.2)
puts a
puts a.uniq
puts a.uniq!
a << ''
puts a
