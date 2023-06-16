def is_perfect_square(num)
  return true if num == 1
  left = 1
  right = num
  while left <= right
    mid = (left + right) / 2
    square = mid * mid
    if square == num
      return true
    elsif square < num
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return false
end
