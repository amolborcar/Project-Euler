def champernowne
  num_arr = (1..1000000).to_a
  num_str = num_arr.join("")
  solution = 1
  i = 0
  while i < 7 do
    solution *= (num_str[(10**i)-1]).to_i
    i += 1
  end
  return solution.to_f
end

p champernowne