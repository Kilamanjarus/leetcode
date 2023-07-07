# @param {String[]} words
# @return {String[]}
def find_words(words)
  rows = [
    "qwertyuiop",
    "asdfghjkl",
    "zxcvbnm",
  ]
  result = []
  words.each do |word|
    lowercase_word = word.downcase
    row_index = -1
    rows.each_with_index do |row, index|
      if lowercase_word.chars.all? { |char| row.include?(char) }
        row_index = index
        break
      end
    end
    result << word if row_index != -1
  end
  result
end
