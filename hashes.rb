old_syntax_hash = { :name => 'bob' }
p old_syntax_hash
new_hash = { name: 'bob' }
p new_hash
person = { height: '6 ft', weight: '160 lbs' }
person[:hair] = 'brown'
person[:age] = 62
p person
person.delete(:age)
p person[:weight]
person.merge!(new_hash)
p person
person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
# optional parameters
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}."
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting('Bob')
greeting('Bob', { age: 62, city: 'New York City' })
# alternate syntax
greeting('Bob', age: 62, city: 'New York City')

