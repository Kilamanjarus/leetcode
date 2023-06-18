def find_the_difference(s, t)
  count = Hash.new(0)
  s.each_char do |char|
    count[char] += 1
  end
  t.each_char do |char|
    count[char] -= 1
  end
  count.each do |char, count|
    return char if count < 0
  end
end
