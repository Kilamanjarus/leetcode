# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  slow = head
  fast = head

  # Move fast pointer to the end and slow pointer to the middle
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  # Reverse the second half of the linked list
  second_half = reverse_linked_list(slow)

  # Compare the first and reversed second halves
  while second_half
    return false if head.val != second_half.val
    head = head.next
    second_half = second_half.next
  end

  true
end

def reverse_linked_list(head)
  prev = nil
  current = head

  while current
    next_node = current.next
    current.next = prev
    prev = current
    current = next_node
  end

  prev
end
