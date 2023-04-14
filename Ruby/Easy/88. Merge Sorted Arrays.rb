# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  array_length_1 = m - 1
  array_length_2 = n - 1
  final_array_length = m + n - 1

  while array_length_1 >= 0 && array_length_2 >= 0
    if nums1[array_length_1] > nums2[array_length_2]
      nums1[final_array_length] = nums1[array_length_1]
      array_length_1 -= 1
    else
      nums1[final_array_length] = nums2[array_length_2]
      array_length_2 -= 1
    end
    final_array_length -= 1
  end

  while array_length_2 >= 0
    nums1[final_array_length] = nums2[array_length_2]
    array_length_2 -= 1
    final_array_length -= 1
  end
end
