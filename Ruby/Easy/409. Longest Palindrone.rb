# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  char_count = Hash.new(0)
  s.each_char { |char| char_count[char] += 1 }
  length = 0
  has_odd_count = false
  char_count.each do |char, count|
    if count.even?
      length += count
    else
      length += count - 1
      has_odd_count = true
    end
  end
  length += 1 if has_odd_count
  return length
end
