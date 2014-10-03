require 'debugger'

def sum_of_primes
  # Generate list of primes using Sieve of Eratosthenes
  primes = (0..2000000).to_a
  primes[0] = primes[1] = nil
  for i in (2..2000000)
    next unless primes[i]
    # Figure out how this line works...
    # Solution: iterate primes.length times from position i^2 on, by i each time, and change each value to nil
    (i*i).step(primes.length, i) do |j|
      primes[j] = nil
    end
  end

  # Sum the list
  return primes.compact!.inject(:+)

end

p sum_of_primes