def add_binary(a, b)
  a_index = a.length - 1
  b_index = b.length - 1
  carry = 0
  sum = ""
  while a_index >= 0 || b_index >= 0 || carry > 0
    number_a = a_index >= 0 ? a[a_index].to_i : 0
    number_b = b_index >= 0 ? b[b_index].to_i : 0
    digit_sum = number_a + number_b + carry
    sum = (digit_sum % 2).to_s + sum
    carry = digit_sum / 2
    a_index -= 1
    b_index -= 1
  end
  return sum
end
