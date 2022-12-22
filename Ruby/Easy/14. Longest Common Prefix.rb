# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  test_string_array = (strs.sort!).first
  prefix = ""
  if strs == []
    return ""
  end
  test_string_array.each_char do |letter|
    strs.each do |string|
      if string.start_with?(prefix + letter)
        next
      elsif string == ""
        return ""
      else
        if prefix != ""
          return prefix
        else
          return ""
        end
      end
    end
    prefix += letter.to_s
  end
end
