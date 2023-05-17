def move_zeroes(nums)
  zero_count = 0
  i = 0
  while i < nums.length
    if nums[i] != 0
      nums[zero_count] = nums[i]
      zero_count += 1
    end
    i += 1
  end
  while zero_count < nums.length
    nums[zero_count] = 0
    zero_count += 1
  end
end
