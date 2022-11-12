a = 'hi'
english_greetings = ['hello', a, 'good morning']
p english_greetings[1].object_id
greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}
p greetings
greetings[:english][1] = 'hey'
p greetings
p a
p english_greetings[1].object_id
p a.object_id
greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]
