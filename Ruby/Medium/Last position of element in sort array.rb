# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  def find_left(nums, target)
    left, right = 0, nums.length - 1
    while left <= right
      mid = left + (right - left) / 2
      if nums[mid] == target
        right = mid - 1
      elsif nums[mid] < target
        left = mid + 1
      else
        right = mid - 1
      end
    end
    left
  end

  def find_right(nums, target)
    left, right = 0, nums.length - 1
    while left <= right
      mid = left + (right - left) / 2
      if nums[mid] == target
        left = mid + 1
      elsif nums[mid] < target
        left = mid + 1
      else
        right = mid - 1
      end
    end
    right
  end

  left_index = find_left(nums, target)
  right_index = find_right(nums, target)

  if left_index <= right_index && nums[left_index] == target
    [left_index, right_index]
  else
    [-1, -1]
  end
end
