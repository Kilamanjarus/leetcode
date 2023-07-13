# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  n = height.length
  max_area = 0
  left = 0
  right = n - 1
  while left < right
    h = [height[left], height[right]].min
    w = right - left
    area = h * w
    max_area = [max_area, area].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_area
end
