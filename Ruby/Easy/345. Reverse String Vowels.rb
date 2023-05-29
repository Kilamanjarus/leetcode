def reverse_vowels(s)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  vowels_in_string = s.chars.select { |char| vowels.include?(char) }

  reversed_vowels = vowels_in_string.reverse
  vowel_index = 0

  s.chars.map do |char|
    if vowels.include?(char)
      reversed_vowels[vowel_index].tap { vowel_index += 1 }
    else
      char
    end
  end.join
end
