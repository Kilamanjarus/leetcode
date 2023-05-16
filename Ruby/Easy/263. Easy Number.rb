def is_ugly(n)
  return false if n <= 0 # Ugly numbers are positive integers
  while n % 2 == 0
    n /= 2
  end
  while n % 3 == 0
    n /= 3
  end
  while n % 5 == 0
    n /= 5
  end
  n == 1 # If n is only divisible by 2, 3, and 5, the result should be 1
end
