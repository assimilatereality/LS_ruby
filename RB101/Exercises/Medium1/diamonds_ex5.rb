def diamonds(num)
  1.upto(num) do |i|
    if i.odd?
      puts ('*' * i).center(num)
    end
  end
  (num - 1).downto(1) do |i|
    if i.odd?
      puts ('*' * i).center(num)
    end
  end

end

diamonds(1)
diamonds(3)
diamonds(9)
