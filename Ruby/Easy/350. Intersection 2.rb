# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  counter1 = nums1.each_with_object(Hash.new(0)) { |num, counter| counter[num] += 1 }
  counter2 = nums2.each_with_object(Hash.new(0)) { |num, counter| counter[num] += 1 }
  intersection = []

  counter1.each do |num, count|
    if counter2[num] > 0
      min_count = [count, counter2[num]].min
      intersection += [num] * min_count
    end
  end
  return intersection
end
