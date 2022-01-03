vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  totals = vehicles.tally
  totals.each do |k, v|
    puts "#{k}=>#{v}"
  end
end

count_occurrences(vehicles)
