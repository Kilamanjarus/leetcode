class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  new_head = head.next
  head.next = swap_pairs(head.next.next)
  new_head.next = head

  new_head
end
