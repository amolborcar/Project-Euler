def distinct_powers
  holder_arr = []
  a = 2
  while a <= 100
    b = 2
    while b <= 100
      if holder_arr.include? (a**b)
        b += 1
      else
        holder_arr << a**b
        b += 1
      end
    end
    a += 1
  end

  return holder_arr.length
end

p distinct_powers