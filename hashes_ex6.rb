x = "hi there"
my_hash = {x: "some value"}
my_hash.each { |k, v| puts "#{k}: #{v}" }
my_hash2 = {x => "some value"}
my_hash2.each { |k, v| puts "#{k}: #{v}" }
