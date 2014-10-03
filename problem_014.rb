def collatz
  max_length = 0
  highest_num = 0
  for i in (2..1000000)
    holder = [i]
    while holder[-1] != 1 do
      last_num = holder[-1]
      if last_num % 2 == 0
        holder << last_num/2
      else
        holder << (3*last_num)+1
      end
      highest_num = i if holder.length > max_length
      max_length = holder.length if holder.length > max_length
    end
  end
  return highest_num
end

p collatz

