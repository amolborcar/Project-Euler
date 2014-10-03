def names_score
  names = []
  score_count = 0
  # read in text file of names
  text = File.open("p022_names.txt").read
  # This part needs to be fixed
  text.gsub!(/,/, "\n")
  text.each_line { |line| names << line }
  names.each_with_index do |name, index|
    name.gsub!(/[^A-Z]/, "")
    name_score = 0
    name.each_byte do |c|
      name_score += (c-64)
    end
    score_count += (name_score*(index+1))
  end
  return score_count
end

p names_score