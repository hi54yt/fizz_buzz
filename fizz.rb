results = 0
jian = []
"11-2+1".split('+').each do |value|
  if !value.include?('-')
    results += value.to_i
  else
    jian << value.split('-')
  end
end

jian_array = []
first = []
jian.each do |value|
    first << value[0]
    jian_array << value[1..value.length]
end

jia_all = 0
first.each do |value|
  jia_all += value.to_i
end

jian_all = 0
jian_array.flatten.each do |value|
  jian_all += value.to_i
end

puts results + jia_all - jian_all
