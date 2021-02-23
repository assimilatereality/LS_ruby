words = "the flintstones rock"

p words.split.each(&:capitalize!).join(' ')

p words.split.map(&:capitalize).join(' ')
