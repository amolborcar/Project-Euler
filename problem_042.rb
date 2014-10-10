def coded_triangle
  # Create words array
  f = File.open("./p042_words.txt", "r")
  words = []
  f.each_line do |line|
    words = line.split(",").to_a
  end
  words.map! { |word| word.gsub!(/\W+/, '') }

  # create first 100 triangle values
  triangles = []
  i = 1
  while i < 100 do
    triangles << (0.5)*(i*(i+1))
    i += 1
  end

  # Check each word to see if it's a coded triangle word

  words.each do |word|
    counter = 0
    word.each_byte do |letter|
      counter += (letter - 64)
    end
    if triangles.include?(counter)
      words_counter += 1
    end
  end

  return words_counter

end

p coded_triangle