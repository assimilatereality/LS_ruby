a = [1, 2, 'bob', 4.2, %w[d e f]]

a.push('f')
a << 'bob'
a << 'e'
p a
p a[4][1]
a.pop
p a
p a.delete_at(1)
p a.delete(4.2)
p a
p a.uniq
p a
p a.uniq!
a << ''
p a
