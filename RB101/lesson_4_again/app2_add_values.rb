ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each_pair do |_, age|
  total_ages += age
end

puts total_ages

alt_total_ages = 0
alt_total_ages = ages.values.inject(:+)

puts alt_total_ages
