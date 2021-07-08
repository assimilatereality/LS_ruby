contact_data = ['joe@email.com', '123 Main st.', '555-123-4567']
contacts = { 'Joe Smith' => {} }
fields = [:email, :address, :phone]

b = contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
    p contact_data
  end
end

p b

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }
fields = [:email, :address, :phone]

c = contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
    p contact_data
  end
end

p c
