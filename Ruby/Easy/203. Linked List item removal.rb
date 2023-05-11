def remove_elements(head, val)
  while head != nil && head.val == val
    head = head.next
  end

  current = head
  while current != nil && current.next != nil
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end
  return head
end
