def majority_element(nums)
  candidate = nil
  count = 0

  nums.each do |num|
    if count == 0
      candidate = num
      count = 1
    elsif candidate == num
      count += 1
    else
      count -= 1
    end
  end

  candidate
end
