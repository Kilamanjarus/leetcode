def my_sqrt(x)
  found = false
  i = 1
  while found != true
    if i * i < x
      i += 1
    elsif i * i == x
      found = true
      return i
    else
      found = true
      return i - 1
    end
  end
end
