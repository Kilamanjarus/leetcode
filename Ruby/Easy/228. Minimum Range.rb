def summary_ranges(nums)
  result = []
  i = 0

  while i < nums.length
    start_range = nums[i]
    end_range = start_range

    while i < nums.length - 1 && nums[i + 1] == end_range + 1
      end_range = nums[i + 1]
      i += 1
    end

    if start_range == end_range
      result << "#{start_range}"
    else
      result << "#{start_range}->#{end_range}"
    end

    i += 1
  end

  return result
end
