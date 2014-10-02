class Float
  def prettify
    to_i == self ? to_i : self
  end
end

def triplet
  a = 1
  b = 1
  while a < 1000
    a.upto(1000) do |x|
      b = x
      c = Math.sqrt(a**2 + b**2).prettify
      if c.is_a?(Integer) && a+b+c == 1000
        return a*b*c if a+b+c == 1000
      end
      p c
    end
    a += 1
  end
end

p triplet