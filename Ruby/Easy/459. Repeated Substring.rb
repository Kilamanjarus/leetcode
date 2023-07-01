# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  double_s = s + s
  double_s = double_s[1..-2]
  double_s.include?(s)
end

s = "abcabcabc"
can_construct = repeated_substring_pattern(s)
puts can_construct
