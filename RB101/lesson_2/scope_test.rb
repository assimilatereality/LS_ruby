a = [1, 2, 3, 3]

def print_this(a)
  p 'hello'
  p(a)
  p(a)
end

print_this(a) do
  p a
end

b = a
a.uniq
c = 'III'
p a
p b
p c

