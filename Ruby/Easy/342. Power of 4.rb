def is_power_of_four(n)
  return false if n <= 0
  while n % 4 == 0
    n /= 4
  end
  n == 1
end
