# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return x.to_s.split("").reverse() == x.to_s.split("")
end
