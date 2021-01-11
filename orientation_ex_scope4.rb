# frozen_string_literal: false

# strings are mutable; numbers are immutable
a = 'Xyzzy'
n = 3

def my_value(b, c)
  puts "b = #{b}, c = #{c}"    # b = Xyzzy, c = 3
  b[2] = '-'                   # mutates the content of b and therefore a
  puts "b = #{b}, c = #{c}"    # b = Xy-zy, c = 3
  b = 'abc'                    # assigns a new string to b; no modification of b (or a)
  c = 4.2
  puts "b = #{b}, c = #{c}"    # b = abc, c = 4.2
  c
end

rst = my_value(a, n)
puts "a = #{a}, n = #{n}"      # a = Xy-zy, n = 3
puts rst                       # 4.2
