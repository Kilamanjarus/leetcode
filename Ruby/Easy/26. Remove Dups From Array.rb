# Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
def remove_duplicates(nums)
  return nums.uniq!&.size
end

p remove_duplicates([1, 1, 2])
