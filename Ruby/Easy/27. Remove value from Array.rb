# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  k = []
  nums.each do |num, index|
    if num == val
      nums.remove(index)
    end
  end
  nums && nums.length
end
