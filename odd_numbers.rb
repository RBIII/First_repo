start_number = 1

until start_number == 100
  case
  when start_number % 2 == 0
    start_number += 1
  else
    puts start_number
    start_number += 1
  end
end
