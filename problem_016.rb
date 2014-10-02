def power_digit_sum
  num = 2**1000
  num_chars = num.to_s.split('')
  counter = 0
  num_chars.each do |num|
    counter += num.to_i
  end
  return counter
end

puts power_digit_sum