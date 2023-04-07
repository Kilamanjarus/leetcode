def climb_stairs(n)
  if n <= 1
    return n
  elsif n == 2
    return 2
  else
    return climb_stairs(n - 1) + climb_stairs(n - 2)
  end
end
