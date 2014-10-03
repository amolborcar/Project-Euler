# NOT DONE

def number_letter_counts
  total_count = 0
  translator_hash = {
    'ones' => {
      '1' => "one",
      '2' => "two",
      '3' => "three",
      '4' => "four",
      '5' => "five",
      '6' => "six",
      '7' => "seven",
      '8' => "eight",
      '9' => "nine"
    },
    'teens' => {
      '10' => "ten",
      '11' => "eleven",
      '12' => "twelve",
      '13' => "thirteen",
      '14' => "fourteen",
      '15' => "fifteen",
      '16' => "sixteen",
      '17' => "seventeen",
      '18' => "eighteen",
      '19' => "nineteen"
    },
    'tens' => {
      '20' => "twenty",
      '30' => "thirty",
      '40' => "forty",
      '50' => "fifty",
      '60' => "sixty",
      '70' => "seventy",
      "80" => "eighty",
      "90" => "ninety"
    }
  }

  for i in (1..19)
    case
    when i >= 20
      if
    when i >= 10
      total_count += translator_hash['teens'][i.to_s].length
    else
      total_count += translator_hash['ones'][i.to_s].length
    end
  end

  return total_count
end

p number_letter_counts