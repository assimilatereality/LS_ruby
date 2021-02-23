require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  binding.pry # execution will stop here
  break if counter == 5
end

# ctrl D to continue (on command line, not in RubyMiner)
# exit-program to exit
