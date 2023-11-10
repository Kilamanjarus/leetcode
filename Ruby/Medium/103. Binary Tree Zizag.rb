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

def zigzag_level_order(root)
  return [] if root.nil?

  result = []
  queue = [root]
  zigzag = false

  while !queue.empty?
    level_values = []
    level_size = queue.length

    level_size.times do
      current = queue.shift

      if zigzag
        level_values.unshift(current.val)
      else
        level_values.push(current.val)
      end

      queue.push(current.left) if current.left
      queue.push(current.right) if current.right
    end

    result.push(level_values)
    zigzag = !zigzag
  end

  return result
end
