def jump(nums)
  n = nums.length
  if n == 1
    return 0
  end

  jumps = 0
  max_reach = 0
  current_end = 0

  for i in 0..(n - 2)
    max_reach = [max_reach, i + nums[i]].max
    if i == current_end
      jumps += 1
      current_end = max_reach
    end
  end

  jumps
end
