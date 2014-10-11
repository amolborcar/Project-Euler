def self_powers
  num = 0
  for i in (1..1000)
    num += i**i
  end
  return num.to_s[-10..-1]
end

p self_powers