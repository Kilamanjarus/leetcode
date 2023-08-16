# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  stack = []

  operations.each do |operation|
    if operation == "+"
      stack << stack[-1] + stack[-2]
    elsif operation == "D"
      stack << stack[-1] * 2
    elsif operation == "C"
      stack.pop
    else
      stack << operation.to_i
    end
  end

  stack.sum
end
