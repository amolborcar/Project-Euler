# depth = dim/2 +1
# each row = n + 2^(row)

def number_spiral(dim)
  depth = dim/2+1
  diag_sum = 1
  counter = 1
  i = 1

  while i < depth do
    j = 1
    while j <=4 do
      counter += 2*i
      diag_sum += counter
      j += 1
    end
    i += 1
  end

  return diag_sum

end

p number_spiral(1001)