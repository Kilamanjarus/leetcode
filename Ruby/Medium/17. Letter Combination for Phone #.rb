def letter_combinations(digits)
  return [] if digits.empty?

  mapping = {
    "2" => "abc",
    "3" => "def",
    "4" => "ghi",
    "5" => "jkl",
    "6" => "mno",
    "7" => "pqrs",
    "8" => "tuv",
    "9" => "wxyz",
  }

  combinations = []
  backtrack("", digits, mapping, combinations)
  combinations
end

def backtrack(current, remaining, mapping, combinations)
  if remaining.empty?
    combinations << current
    return
  end

  digit = remaining[0]
  letters = mapping[digit]

  letters.each_char do |letter|
    backtrack(current + letter, remaining[1..-1], mapping, combinations)
  end
end
