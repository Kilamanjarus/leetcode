def contains_nearby_duplicate(nums, k)
  map = {}
  nums.each_with_index do |num, i|
    if map.key?(num) && i - map[num] <= k
      return true
    else
      map[num] = i
    end
  end
  false
end
