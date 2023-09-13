# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def reverse_k_group(head, k)
  return head if k == 1 || head.nil?

  dummy = ListNode.new(0)
  dummy.next = head
  prev_group_tail = dummy

  while true
    current_group_start = prev_group_tail.next
    current_group_end = current_group_start

    k.times do
      return dummy.next if current_group_end.nil?
      current_group_end = current_group_end.next
    end

    prev, current = nil, current_group_start
    k.times do
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end

    prev_group_tail.next = prev
    current_group_start.next = current
    prev_group_tail = current_group_start
  end

  dummy.next
end

def array_to_linked_list(arr)
  return nil if arr.empty?

  dummy = ListNode.new(0)
  current = dummy

  arr.each do |val|
    current.next = ListNode.new(val)
    current = current.next
  end

  dummy.next
end

def linked_list_to_array(head)
  result = []
  current = head
  while current
    result << current.val
    current = current.next
  end
  result
end
