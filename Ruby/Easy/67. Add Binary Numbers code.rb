# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  a_index = a.length - 1
  b_index = b.length - 1
  carry = 0
  output = []
  while a_index >= 0 || b_index >= 0 || carry > 0
    p a[a_index]
    p b[b_index]
    if a[a_index].to_i + b[b_index].to_i == 2 && carry != 1
      p "pass 2 w/o carry"
      carry = 1
      output << 0
    elsif a[a_index].to_i + b[b_index].to_i == 2 && carry == 1
      p "pass 2 w/ carry"
      carry = 1
      output << 1
    elsif a[a_index].to_i + b[b_index].to_i == 1 && carry != 1
      p "pass 1 w/o carry"
      carry = 0
      output << 1
    elsif a[a_index].to_i + b[b_index].to_i == 1 && carry == 1
      p "pass 1 w/ carry"
      carry = 1
      output << 0
    elsif a[a_index].to_i + b[b_index].to_i == 0 && carry != 1
      p "pass 0 w/o carry"
      carry = 0
      output << 0
    elsif a[a_index].to_i + b[b_index].to_i == 0 && carry == 1
      p "pass 0 w/ carry"
      carry = 0
      output << 1
    end
    p output
    p a_index
    p b_index
    a_index -= 1
    b_index -= 1
  end
  return output
end
