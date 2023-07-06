# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max_consecutive_ones = 0
  current_consecutive_ones = 0
  nums.each do |num|
    if num == 1
      current_consecutive_ones += 1
      max_consecutive_ones = [max_consecutive_ones, current_consecutive_ones].max
    else
      current_consecutive_ones = 0
    end
  end
  max_consecutive_ones
end
