def plus_one(digits)
  number_array = []
  final_array = []
  number_array = (digits.join.to_i + 1).to_s.split("")
  number_array.each do |num|
    num = num.to_i
    final_array << num
  end
  return final_array
end
