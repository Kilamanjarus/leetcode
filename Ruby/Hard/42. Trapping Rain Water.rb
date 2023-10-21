def trap(height)
  left, right = 0, height.length - 1
  left_max, right_max = 0, 0

  total_water = 0

  while left < right
    if height[left] < height[right]
      if height[left] > left_max
        left_max = height[left]
      else
        total_water += left_max - height[left]
      end
      left += 1
    else
      if height[right] > right_max
        right_max = height[right]
      else
        total_water += right_max - height[right]
      end
      right -= 1
    end
  end

  total_water
end
