str = "The Flintstones Rock!"
(1..10).each { |n| puts str.rjust(str.size + n) }
