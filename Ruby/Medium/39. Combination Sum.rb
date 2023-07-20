def combination_sum(candidates, target)
  result = []
  backtrack(candidates, target, [], 0, result)
  result
end

def backtrack(candidates, target, current_combination, start_index, result)
  if target == 0
    result << current_combination.dup
    return
  end

  (start_index...candidates.length).each do |i|
    if candidates[i] <= target
      current_combination << candidates[i]
      backtrack(candidates, target - candidates[i], current_combination, i, result)
      current_combination.pop
    end
  end
end
