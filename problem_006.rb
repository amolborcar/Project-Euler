def sum_square_difference
  nums = (1..100).to_a
  sum_of_squares = 0
  nums.each do |num|
    sum_of_squares += num ** 2
  end
  square_of_sum = nums.reduce(:+)**2
  return square_of_sum - sum_of_squares
end

puts sum_square_difference