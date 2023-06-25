# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  i = num1.length - 1
  j = num2.length - 1
  carry = 0
  result = ""

  while i >= 0 || j >= 0 || carry > 0
    digit1 = i >= 0 ? num1[i].to_i : 0
    digit2 = j >= 0 ? num2[j].to_i : 0
    sum = digit1 + digit2 + carry
    carry = sum / 10
    digit = sum % 10
    result = digit.to_s + result
    i -= 1
    j -= 1
  end

  return result
end
