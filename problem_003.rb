require 'Prime'

def largest_prime_factor
  test_num = 600851475143
  # find a way to do this without Prime module
  primes = Prime.each(Math.sqrt(test_num)).to_a

  factors = []
  while test_num > 1 do
    primes.each do |p|
      if test_num % p == 0
        factors << p
        test_num = test_num / p
      end
    end
  end
  return factors
end

p largest_prime_factor