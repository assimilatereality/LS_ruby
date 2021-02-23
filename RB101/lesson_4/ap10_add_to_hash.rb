munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, nested|
  case nested["age"]
  when 0..17
    nested["age_group"] = "kid"
  when 18..64
    nested["age_group"] = "adult"
  else
    nested["age_group"] = "senior"
  end
end

puts munsters
