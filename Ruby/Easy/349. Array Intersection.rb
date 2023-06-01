def intersection(nums1, nums2)
  set1 = nums1.to_set
  set2 = nums2.to_set
  intersection = set1.intersection(set2)
  intersection.to_a
end
