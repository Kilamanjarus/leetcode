def is_isomorphic(s, t)
  return false if s.length != t.length
  char_map = {}
  used_chars = Set.new()
  s.chars.each_with_index do |char, index|
    if !char_map.key?(char)
      return false if used_chars.include?(t[index])
      char_map[char] = t[index]
      used_chars.add(t[index])
    else
      return false if char_map[char] != t[index]
    end
  end
  return true
end
