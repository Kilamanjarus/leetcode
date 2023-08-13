# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  sum = nums[0, k].sum
  max_average = sum.to_f / k

  (k...nums.length).each do |i|
    sum += nums[i] - nums[i - k]
    max_average = [max_average, sum.to_f / k].max
  end

  max_average
end
