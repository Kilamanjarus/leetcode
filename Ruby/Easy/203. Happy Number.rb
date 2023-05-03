def is_happy(n)
  seen_numbers = Set.new()
  while n != 1 && !seen_numbers.include?(n)
    seen_numbers.add(n)
    digits = n.to_s.chars.map(&:to_i)
    n = digits.map { |digit| digit ** 2 }.sum
  end
  return n == 1
end
