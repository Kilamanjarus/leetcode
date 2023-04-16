# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  p s.gsub(/[\s,:;._!@#$%^&*()[]{}'"\/\\]/ ,"")
  if s.gsub(/[\s,:;._!@#$%^&*()[]{}'"\/\\]/ ,"")
== ""
      return true
  else
      return s.gsub(/[\s,:;._!@#$%^&*()[]{}'"\/\\]/ ,"").downcase() == s.gsub(/[\s,:;._!@#$%^&*()[]{}'"\/\\]/ ,"").downcase().reverse
  end
end