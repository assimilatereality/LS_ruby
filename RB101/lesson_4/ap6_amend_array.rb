flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

new_ary = []
flintstones.each { |name| new_ary << name[0, 3] }
p new_ary

flintstones.map! { |name| name[0, 3] }
p flintstones
