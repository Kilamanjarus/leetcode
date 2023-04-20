# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  result = ""
  while column_number > 0
    column_number -= 1
    digit = column_number % 26
    result = (digit + "A".ord).chr + result
    column_number /= 26
  end
  return result
end
