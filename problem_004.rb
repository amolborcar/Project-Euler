def largest_palindrome
  nums = (100..999).to_a
  largest = 0
  nums.each do |first|
    mults = (nums[1]..nums[-1]).to_a
    mults.each do |second|
      product = first * second
      if product.to_s == product.to_s.reverse && product > largest
        largest = product
      end
    end
  end
  return largest
end

puts largest_palindrome