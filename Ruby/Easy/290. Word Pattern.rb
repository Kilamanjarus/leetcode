def word_pattern(pattern, s)
  words = s.split(" ")
  return false if pattern.length != words.length

  pattern_to_word = {}
  word_to_pattern = {}

  (0...pattern.length).each do |i|
    pattern_char = pattern[i]
    word = words[i]

    if pattern_to_word[pattern_char]
      return false if pattern_to_word[pattern_char] != word
    else
      pattern_to_word[pattern_char] = word
    end

    if word_to_pattern[word]
      return false if word_to_pattern[word] != pattern_char
    else
      word_to_pattern[word] = pattern_char
    end
  end

  true
end
