def contains_duplicate(nums)
  nums = nums.sort
  i = 0
  while i < nums.length
    if nums[i] == nums[i + 1]
      return true
    end
    i += 1
  end
  return false
end
