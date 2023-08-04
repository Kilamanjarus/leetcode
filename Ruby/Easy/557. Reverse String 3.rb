def reverse_words(s)
  words = s.split(" ")
  reversed_words = words.map { |word| word.reverse }
  reversed_sentence = reversed_words.join(" ")
  reversed_sentence
end
