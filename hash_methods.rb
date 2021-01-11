name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
p name_and_age.has_key?("Steve")
p name_and_age.key?("Bob")

p(name_and_age.select { |k, v| k == 'Bob' })
p(name_and_age.select { |k, v| (k == 'Bob') || (v == 19) })

num = name_and_age.fetch('Steve')
p num
# option for return when key is not in the hash
ans = name_and_age.fetch('Larry', "Larry isn't in this hash")
p ans
arr = name_and_age.to_a
p arr
p name_and_age

# array of all the keys
p name_and_age.keys
# array of all the values
p name_and_age.values
# iterating
name_and_age.keys.each { |k| puts k }
name_and_age.each_key { |k| puts k }
