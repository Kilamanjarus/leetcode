def missing_number(nums)
  n = nums.length
  expected_sum = (n * (n + 1)) / 2
  actual_sum = nums.sum
  expected_sum - actual_sum
end
