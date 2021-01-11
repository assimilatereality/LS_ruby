family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

imm_fam = family.select do |k, v|
  (k == :sisters) || (k == :brothers)
end
arr = imm_fam.values.flatten
p arr
