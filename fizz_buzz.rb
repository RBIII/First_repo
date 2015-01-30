count = 1

until count == 101
  if (count % 3) == 0 && (count % 5) == 0
    puts "FizzBuzz"
    count += 1
  elsif count % 3 == 0
    puts "Fizz"
    count += 1
  elsif count % 5 == 0
    puts "Buzz"
    count += 1
  else
    puts count
    count += 1
  end
end
