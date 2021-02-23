vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

# def count_occurrences(vehicles)
#   vehicles.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
# end

def count_occurrences(ary)
  occurrences = {}

  ary.uniq.each do |element|
    occurrences[element] = ary.count(element)
  end

  # puts occurrences
  # puts occurrences.keys
  # puts occurrences.values

  occurrences.each do |k, v|
    puts "#{k} => #{v}"
  end
end

# puts
count_occurrences(vehicles)
