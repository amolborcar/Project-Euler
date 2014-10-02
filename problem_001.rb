def sum_of_multiples
  counter = 0;
  (1..999).to_a.each do |num|
    if num % 3 == 0 || num % 5 == 0
      counter += num
    end
  end
  return counter
end

puts sum_of_multiples