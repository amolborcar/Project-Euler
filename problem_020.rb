def factorial_sum(num)
  # calculate the factorial of the number
  fact = num.downto(1).inject(:*)
  sum = 0
  # count each digit by converting to integer
  fact.to_s.split('').each do |x|
    sum += x.to_i
  end
  return sum
end

p factorial_sum(100)