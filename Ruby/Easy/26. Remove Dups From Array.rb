# Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

def remove_duplicates(nums)
  new_nums = []
  i = 0
  nums.sort!
  while i < nums.length
    if nums[i] != new_nums.last
      new_nums << nums[i]
    end
    i += 1
  end
  return new_nums
end

p remove_duplicates([1, 1, 2, 3, 4, 4, 4, 5, 6, 7, 7, 8, 8, 8, 9, 9, 10])
