@memo = {}

def climb_stairs(n)
  if n <= 1
    return n
  elsif n == 2
    return 2
  elsif @memo[n]
    return @memo[n]
  else
    @memo[n] = climb_stairs(n - 1) + climb_stairs(n - 2)
    return @memo[n]
  end
end
