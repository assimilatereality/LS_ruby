ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.sum

total_ages = 0
ages.each { |_, age| total_ages += age }
puts total_ages # => 6174

puts ages.values.inject(:+) # => 6174
