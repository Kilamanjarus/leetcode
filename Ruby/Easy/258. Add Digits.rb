def add_digits(num)
  while num > 9
    nums = num.to_s.split("")
    sum = 0
    nums.each do |number|
      sum = number.to_i + sum
    end
    num = sum
  end
  return num
end
