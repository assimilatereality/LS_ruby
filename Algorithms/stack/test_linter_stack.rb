require_relative 'linter'

linter = Linter.new

puts linter.lint('( var x = { y: [1, 2, 3] } )')
puts linter.lint('(var x = { y: [1, 2, 3] } ')
