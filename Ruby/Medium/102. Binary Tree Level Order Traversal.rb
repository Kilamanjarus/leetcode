# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?

  result = []
  queue = [root]

  while !queue.empty?
    level_values = []
    level_size = queue.length

    level_size.times do
      current = queue.shift
      level_values.push(current.val)

      queue.push(current.left) if current.left
      queue.push(current.right) if current.right
    end

    result.push(level_values)
  end

  return result
end
