words = "the flintstones rock"
words = words.split
words.each(&:capitalize!)
words = words.join(' ')
p words

words = "the flintstones rock"
words2 = (words.split.map(&:capitalize).join(' '))
p words2
