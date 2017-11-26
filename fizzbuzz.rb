[*1..100].each do |n|
  if (n % 3) == 0 && (n % 5) == 0
    p "#{n}:FizzBuzz"
  else
    if (n % 3) == 0
      p "#{n}:Fizz"
    end
    if (n % 5) == 0
      p "#{n}:Buzz"
    end
  end
end
