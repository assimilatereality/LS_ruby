line = "first_name=david;last_name=black;country=usa"

#record = line.split(/=|;/)

#p record

data = []

record = Hash[*line.split(/=|;/)]
data.push(record)

p data
puts data
