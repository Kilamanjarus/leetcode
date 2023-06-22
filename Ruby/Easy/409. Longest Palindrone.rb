# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  char_count = Hash.new(0)
  s.each_char { |char| char_count[char] += 1 }
  length = 0
  char_count.each do |char, count|
    if count.even?
      length += count
    else
      length += count - 1
    end
  end
  length += 1 if char_count.values.any? { |count| count == 1 }
  return length
end
