def generate_parenthesis(n)
  combinations = []
  backtrack("", 0, 0, n, combinations)
  combinations
end

def backtrack(current, open_count, close_count, n, combinations)
  if current.length == 2 * n
    combinations << current
    return
  end

  if open_count < n
    backtrack(current + "(", open_count + 1, close_count, n, combinations)
  end

  if close_count < open_count
    backtrack(current + ")", open_count, close_count + 1, n, combinations)
  end
end
