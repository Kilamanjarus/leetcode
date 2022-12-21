# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  i = 0
  output = []
  nums = nums.sort()
  p nums.uniq
  while i < nums.length - 2
    j = i + 1
    if nums.uniq == [0]
      output << [0, 0, 0]
    end
    while j < nums.length - 1 && nums[i] != nums[i - 1]
      k = j + 1
      while k < nums.length
        if nums[i] + nums[j] + nums[k] == 0 && output.include?([nums[i], nums[j], nums[k]].sort()) == false
          output << [nums[i], nums[j], nums[k]].sort()
        end
        k += 1
      end
      j += 1
    end
    i += 1
  end
  return output
end

#It works, however it needs to be faster as it exceeds the time limit

p three_sum([13, -5, 3, 3, -1, 13, 3, 1, -9, -4, 9, 12, 6, -9, -6, -12, -8, 3, 12, 14, 4, -15, 2, -11, 4, -12, 10, 9, -6, -3, -8, 14, 7, 3, 2, -8, -7, -10, 8, -8, -7, -6, -11, 6, -7, -2, 9, -8, 8, -2, 13, -10, -2, 0, -14, -13, -4, 11, 3, -3, -7, 3, -4, 8, 13, 13, -15, -9, 10, 0, -2, -12, 1, 2, 9, 1, 8, -4, 8, -7, 9, 7, -2, -15, 14, 0, -13, -13, -12, -2, -1, -11, 8, 10, 12, 6, 8, 4, 12, 3, 11, -12, -2, -3, 5, -15, 6, -10, -4, -1, -1, -10, 13])
