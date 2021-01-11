names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names.shift        # removes from the beginning of the array
  break if names.empty?

  # puts names.pop         # removes from the end of the array
end
