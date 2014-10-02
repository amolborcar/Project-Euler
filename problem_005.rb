def smallest_multiple
  divisors = (1..20).to_a
  i = 20
  while i > 0 do
    return i if divisors.all? { |num| i % num == 0 }
    p i
    i += 20
  end
end

p smallest_multiple

# THERE MUST BE A QUICKER WAY TO DO THIS