def reverse_list(head)
  prev = nil
  curr = head

  while curr != nil
    next_node = curr.next
    curr.next = prev
    prev = curr
    curr = next_node
  end

  return prev
end
