a = 1
b = -3
c = 3

def solve(a, b, c, sign)
  discriminant = b ** 2 - 4 * a * c
  (-b + (sign) * Math.sqrt(discriminant)) / (2 * a)
end

x1 = solve(a, b, c, 1)
x2 = solve(a, b, c, -1)
puts "x1 = #{x1}, x2 = #{x2}"


