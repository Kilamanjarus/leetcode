# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  s_chars = s.chars
  n = s_chars.length
  (0..n).step(2 * k).each do |start|
    left = start
    right = [start + k - 1, n - 1].min
    while left < right
      s_chars[left], s_chars[right] = s_chars[right], s_chars[left]
      left += 1
      right -= 1
    end
  end
  s_chars.join
end
