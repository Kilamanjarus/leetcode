# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  p s.gsub(/[^0-9a-z]/i, "")
  if s.gsub(/[^0-9a-z]/i, "") == ""
    return true
  else
    return s.gsub(/[^0-9a-z]/i, "").downcase() == s.gsub(/[^0-9a-z]/i, "").downcase().reverse
  end
end
