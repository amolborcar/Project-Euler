require 'rational'

def digit_canceling_factors
  holder = []
  n = 10
  while n < 100 do
    d = n
    while d < 100 do
      num = "#{n}/#{d}"
      if (num[0]==num[4]||num[1]==num[3])&& num[0]!=num[3]&&num[1]!=num[4]
        if num[0]==num[4]
          holder.push(num) if num[0..1].to_f/num[3..4].to_f == num[1].to_f/num[3].to_f
        elsif num[1]==num[3]
          holder.push(num) if num[0..1].to_f/num[3..4].to_f == num[0].to_f/num[4].to_f
        end
      end
      d += 1
    end
    n += 1
  end
  denom = 1
  holder.each do |num|
    denom *= (num[0..1].to_f/num[3..4].to_f)
  end

  return denom.to_f

end

p digit_canceling_factors