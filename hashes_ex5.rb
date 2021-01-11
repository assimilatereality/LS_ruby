persons = { name: 'bob', age: 33 }
if persons.has_value?('bob')
  puts 'steve found'
else
  puts 'Not here.'
end

#has_value?
opposites = { key: 'negative!' }
if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
