def is_power_of_two(n)
  if n <= 0
    return false
  end

  while n > 1
    if n % 2 != 0
      return false
    end
    n /= 2
  end

  return true
end
