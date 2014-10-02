def sum_even_fibonacci
  counter = 0
  nums = (0..1).to_a
  while nums[-1] + nums[-2] < 4000000  do
    nums << nums[-1] + nums[-2]
  end

  nums.each do |num|
    counter += num if num % 2 == 0
  end

  return counter
end

puts sum_even_fibonacci