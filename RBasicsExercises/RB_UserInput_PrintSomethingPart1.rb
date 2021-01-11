puts 'Do you want me to print something? (y/n)'
ans = gets.chomp
#if ans == 'y' || ans == 'Y'
#  puts 'something'
#end
puts 'something' if ans.include?('y') || ans.include?('Y')
