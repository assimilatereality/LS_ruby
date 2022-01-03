greetings = { a: 'hi' }
p greetings.object_id
p greetings[:a].object_id
informal_greeting = greetings[:a]
informal_greeting << ' there'
p informal_greeting.object_id
puts informal_greeting  #  => "hi there"
puts greetings
