def array_pair_sum(nums)
  nums.sort.each_slice(2).sum(&:first)
end
