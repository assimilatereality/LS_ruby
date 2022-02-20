def buy_fruit(ary)
  length = ary.size
  rst = []
  index = 0
  length.times do
    ary[index][1].times do
      rst << ary[index][0]
    end
    index += 1
  end
  rst
  end

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]
