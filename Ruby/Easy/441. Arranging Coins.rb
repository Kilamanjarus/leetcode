# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  left = 0
  right = n

  while left <= right
    mid = left + (right - left) / 2
    total_coins = (mid * (mid + 1)) / 2

    if total_coins == n
      return mid # Exact number of coins needed for 'k' rows
    elsif total_coins < n
      left = mid + 1 # Increase 'k' to try more rows
    else
      right = mid - 1 # Decrease 'k' to try fewer rows
    end
  end

  # 'right' represents the largest 'k' where total_coins <= n
  right
end

# Example usage:
n = 8
result = arrange_coins(n)
puts result # Output: 3
