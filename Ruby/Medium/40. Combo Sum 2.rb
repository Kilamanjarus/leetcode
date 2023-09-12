def combination_sum2(candidates, target)
  def backtrack(start, target, current_combination)
    if target == 0
      result << current_combination.dup
      return
    end

    (start...candidates.length).each do |i|
      next if i > start && candidates[i] == candidates[i - 1] # Skip duplicates

      if candidates[i] <= target
        current_combination << candidates[i]
        backtrack(i + 1, target - candidates[i], current_combination)
        current_combination.pop
      else
        break
      end
    end
  end

  candidates.sort!
  result = []
  backtrack(0, target, [])
  result
end
