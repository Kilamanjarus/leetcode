# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  ans = []
  nums1.each do |num|
    found = false
    index = nums2.index(num)
    nums2[index + 1..-1].each do |next_num|
      if next_num > num
        ans << next_num
        found = true
        break
      end
    end
    ans << -1 unless found
  end
  ans
end
