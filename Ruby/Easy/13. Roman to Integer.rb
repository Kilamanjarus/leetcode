#https://leetcode.com/problems/roman-to-integer/submissions/862707860/
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  string_array = s.split("")
  i = 0
  total = 0
  while i < string_array.length
    if i == 0
      if string_array[i] == "I" && string_array[i + 1] != "V" && string_array[i + 1] != "X"
        total = total + 1
      elsif string_array[i] == "V"
        total = total + 5
      elsif string_array[i] == "X" && string_array[i + 1] != "L" && string_array[i + 1] != "C"
        total = total + 10
      elsif string_array[i] == "L"
        total = total + 50
      elsif string_array[i] == "C" && string_array[i + 1] != "D" && string_array[i + 1] != "M"
        total = total + 100
      elsif string_array[i] == "D"
        total = total + 500
      elsif string_array[i] == "M"
        total = total + 1000
      end
    elsif i != 0
      if string_array[i] == "I" && string_array[i + 1] != "V" && string_array[i + 1] != "X"
        total = total + 1
      elsif string_array[i] == "V" && string_array[i - 1] != "I"
        total = total + 5
      elsif string_array[i] == "V" && string_array[i - 1] == "I"
        total = total + 4
      elsif string_array[i] == "X" && string_array[i - 1] != "I" && string_array[i + 1] != "L" && string_array[i + 1] != "C"
        total = total + 10
      elsif string_array[i] == "X" && string_array[i - 1] == "I"
        total = total + 9
      elsif string_array[i] == "L" && string_array[i - 1] != "X"
        total = total + 50
      elsif string_array[i] == "L" && string_array[i - 1] == "X"
        total = total + 40
      elsif string_array[i] == "C" && string_array[i - 1] != "X" && string_array[i + 1] != "D" && string_array[i + 1] != "M"
        total = total + 100
      elsif string_array[i] == "C" && string_array[i - 1] == "X"
        total = total + 90
      elsif string_array[i] == "D" && string_array[i - 1] != "C"
        total = total + 500
      elsif string_array[i] == "D" && string_array[i - 1] == "C"
        total = total + 400
      elsif string_array[i] == "M" && string_array[i - 1] != "C"
        total = total + 1000
      elsif string_array[i] == "M" && string_array[i - 1] == "C"
        total = total + 900
      end
    end
    p string_array[i]
    p total
    i += 1
  end
  p total
end
