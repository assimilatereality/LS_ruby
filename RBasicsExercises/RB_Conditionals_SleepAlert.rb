status = ['awake', 'tired'].sample

dowhat = if status == 'awake'
           'Be productive!'
         else
           'Go to sleep!'
         end

puts dowhat

