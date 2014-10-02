def nth_prime(n)
  primes = []
  i = 2
  while primes.length < n do
    primes << i if (2..i-1).all? { |num| i % num != 0 }
    i += 1
  end
  return primes
end

p nth_prime(10001)

# This is slow...
# As hell...