def staggered_case(str)
  count = 0
  rst = ''
  str.chars.each do |char|
    if char =~ /[a-z]/i
      if count.even?
        rst += char.upcase
      else
        rst += char.downcase
      end
      count += 1
    else
      rst += char
    end
  end
  rst
end

def staggered_case(string)
  counter = 0
  string.downcase.chars.map do |char|
    next(char) if char =~ /[^a-z]/
    counter += 1
    counter.odd? ? char.upcase : char
  end.join
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
