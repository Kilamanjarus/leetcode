def first_uniq_char(s)
  char_count = Hash.new
  s.each_char do |char|
    char_count[char] += 1
  end
  s.each_char.with_index do |char, index|
    if char_count[char] == 1
      return index
    end
  end
  return -1
end
