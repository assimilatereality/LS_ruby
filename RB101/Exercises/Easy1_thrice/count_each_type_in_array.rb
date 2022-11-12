vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(ary)
  hsh = {}
  ary.each do |car|
    if hsh[car]
      hsh[car] += 1
    else
      !hsh.key(car)
      hsh[car] = 1
    end
  end
  hsh.each do |k, v|
    puts "#{k} => #{v}"
  end
end

count_occurrences(vehicles)


