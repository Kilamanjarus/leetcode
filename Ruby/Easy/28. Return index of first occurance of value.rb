# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
def str_str(haystack, needle)
  i = 0
  i_2 = 0
  hay_array = []
  needle_array = []
  occurs = false
  hay_array = haystack.split("")
  needle_array = needle.split("")
  while i < hay_array.length && occurs == false
    if (hay_array[i] == needle_array[i_2])
      p "pass"
      i_2 += 1
      i += 1
      if i_2 == needle_array.size
        p "needle exists in the haystack"
        occurs = true
        break
      end
      p i_2
      p i
      p hay_array[i]
      p needle_array[i_2]
    else
      p "fail"
      i += 1
      i_2 = 0
    end
  end
  if occurs == true
    return i - i_2
  else
    return -1
  end
end

p str_str("mississippi", "issip")
