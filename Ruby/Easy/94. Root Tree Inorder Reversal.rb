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
# @return {Integer[]}
def inorder_traversal(root)
  result = []
  inorder_recursive(root, result)
  result
end

def inorder_recursive(node, result)
  return if node.nil?

  inorder_recursive(node.left, result)
  result << node.val
  inorder_recursive(node.right, result)
end
