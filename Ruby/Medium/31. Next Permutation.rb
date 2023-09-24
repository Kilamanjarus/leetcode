def next_permutation(nums)
  return nums.reverse! if nums.empty?

  # Find the first pair (i-1, i) from the right where a[i-1] < a[i]
  i = nums.length - 1
  while i > 0 && nums[i - 1] >= nums[i]
    i -= 1
  end

  # If no such pair exists, the array is in descending order
  # and it's the last permutation, so reverse the entire array
  if i == 0
    nums.reverse!
    return
  end

  # Find the maximum index j such that nums[j] > nums[i-1]
  j = nums.length - 1
  while nums[j] <= nums[i - 1]
    j -= 1
  end

  # Swap nums[i-1] and nums[j]
  nums[i - 1], nums[j] = nums[j], nums[i - 1]

  # Reverse the subarray from index i to the end
  nums[i..-1] = nums[i..-1].reverse
end

# Example usage:
nums = [1, 2, 3]
next_permutation(nums)
puts nums.inspect  # Output: [1, 3, 2]
