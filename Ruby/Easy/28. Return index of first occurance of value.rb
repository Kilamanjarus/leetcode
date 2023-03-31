# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  i = 0
  i_2 = 0
  hay_array = []
  needle_array = []
  occurs = false
  hay_array = haystack.split("")
  needle_array = needle.split("")
  while i < hay_array.length
    if (hay_array[i] === needle_array[i_2])
      p "pass"
      p i_2
      if i_2 === needle_array.length
        p "true"
        occurs = true
        break
      end
      i_2 += 1
    end
    i += 1
    i_2 = 0
  end
  if occurs == true
    return i - i_2
  else
    return -1
  end
end
