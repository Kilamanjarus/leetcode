# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  if s.gsub(/[\s]/, "") == ""
    return true
  else
    return s == s.gsub(/[\s,:;]/, "").downcase().reverse
  end
end
