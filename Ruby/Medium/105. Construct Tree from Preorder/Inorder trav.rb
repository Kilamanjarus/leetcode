# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  return nil if preorder.empty?

  root_val = preorder.first
  root = TreeNode.new(root_val)

  root_index_inorder = inorder.index(root_val)

  root.left = build_tree(preorder[1..root_index_inorder], inorder[0...root_index_inorder])
  root.right = build_tree(preorder[root_index_inorder + 1..-1], inorder[root_index_inorder + 1..-1])

  return root
end
