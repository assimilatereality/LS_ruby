flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_hash = Hash.new
flintstones.each_with_index { |item, index|
  new_hash[item] = index
}

p new_hash
