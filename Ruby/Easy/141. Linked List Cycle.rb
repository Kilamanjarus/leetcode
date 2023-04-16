# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.sort!
  i = 0
  first = true
  while i < nums.length
    num = nums[i]
    p num
    if num == nums[i + 1]
      first = false
    elsif num != nums[i + 1] && first == false
      first = true
    elsif num != nums[i + 1] && first == true
      return num
    end
    i += 1
  end
end
