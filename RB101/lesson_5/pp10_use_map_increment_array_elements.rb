ary = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }]

new_ary = ary.map do |hsh|
  new = hsh.map do |item|
    item[1] += 1
    item
  end
  new.to_h
end

p([{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end)
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

p new_ary
