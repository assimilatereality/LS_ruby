a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

p a.map { |pairs| pairs.split }.flatten

#preferred:
p a.map!(&:split).flatten!


