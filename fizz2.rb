str = "1+2+3-4+1+2-2-3+1+10"
result = str[0].to_i

def right_num(str, index)
  str[index+1..str.length].split(/\W+/)[0].to_i
end

str.each_char.with_index do |item, index|
  if item == '+' || item == '-'
    oprater = item.to_sym
    right_num = right_num(str, index)
    result = result.send(oprater, right_num)
  end
end

puts result
