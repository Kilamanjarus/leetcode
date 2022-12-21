# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  i = 0
  p nums
  while i < nums.length
    x = nums.length - 1
    while x > i
      if nums[x] + nums[i] == target
        return[i, x]
      end
      x -= 1
    end
    i += 1
  end
end
