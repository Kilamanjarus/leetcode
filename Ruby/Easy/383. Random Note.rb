# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  letter_count = Hash.new(0)
  magazine.each_char do |letter|
    letter_count[letter] += 1
  end
  ransom_note.each_char do |letter|
    return false if letter_count[letter] == 0
    letter_count[letter] -= 1
  end
  return true
end
