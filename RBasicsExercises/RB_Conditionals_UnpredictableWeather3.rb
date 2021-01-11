sun = ['visible', 'hidden'].sample

# Conditionals used this way are called 'modifiers'

puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible'

