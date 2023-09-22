def divide(dividend, divisor)
  # Define the integer limits
  int_min = -2 ** 31
  int_max = 2 ** 31 - 1

  # Handle the edge case where the dividend is INT_MIN
  if dividend == int_min
    return int_max if divisor == -1
    return int_min if divisor == 1
  end

  # Determine the sign of the result
  negative_result = (dividend < 0) ^ (divisor < 0)

  # Take the absolute values of dividend and divisor
  dividend = dividend.abs
  divisor = divisor.abs

  quotient = 0
  while dividend >= divisor
    dividend -= divisor
    quotient += 1
  end

  # Apply the sign to the result
  quotient = -quotient if negative_result

  # Ensure the result is within the 32-bit signed integer range
  [int_min, [int_max, quotient].min].max
end

# Example usage:
dividend = 10
divisor = 3
result = divide(dividend, divisor)
puts result
