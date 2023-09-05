def search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = left + (right - left) / 2

    if nums[mid] == target
      return mid # Found the target element
    elsif nums[left] <= nums[mid]
      # The left half is sorted
      if nums[left] <= target && target < nums[mid]
        right = mid - 1 # Target is in the left sorted half
      else
        left = mid + 1 # Target is in the right half
      end
    else
      # The right half is sorted
      if nums[mid] < target && target <= nums[right]
        left = mid + 1 # Target is in the right sorted half
      else
        right = mid - 1 # Target is in the left half
      end
    end
  end

  -1 # Target not found
end

# Example usage:
nums = [4, 5, 6, 7, 0, 1, 2]
target = 0
result = search(nums, target)
puts result # Output: 4
