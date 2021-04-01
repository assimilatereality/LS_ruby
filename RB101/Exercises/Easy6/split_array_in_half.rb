def halvsies(arr)
  num = arr.size
  num = (num / 2.0).round
  arr1 = []
  arr2 = []
  arr.each_index do |x|
    if x < num
      arr1 << arr[x]
    else
      arr2 << arr[x]
    end
  end
  [arr1, arr2]
end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
