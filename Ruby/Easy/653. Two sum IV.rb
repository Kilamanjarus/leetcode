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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  def in_order_traversal(node, result)
    return if node.nil?

    in_order_traversal(node.left, result)
    result << node.val
    in_order_traversal(node.right, result)
  end

  sorted_elements = []
  in_order_traversal(root, sorted_elements)

  left = 0
  right = sorted_elements.length - 1

  while left < right
    sum = sorted_elements[left] + sorted_elements[right]

    if sum == k
      return true
    elsif sum < k
      left += 1
    else
      right -= 1
    end
  end

  false
end
