def thousand_fib
  fib_arr = [1,1]
  while fib_arr[-1].to_s.length < 1000
    fib_arr << fib_arr[-1]+fib_arr[-2]
  end
  return fib_arr.length
end

p thousand_fib