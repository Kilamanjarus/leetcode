def getIntersectionNode(headA, headB)
  return nil if headA.nil? || headB.nil?
  lenA = getLength(headA)
  lenB = getLength(headB)
  if lenA > lenB
    headA = moveHead(headA, lenA - lenB)
  elsif lenB > lenA
    headB = moveHead(headB, lenB - lenA)
  end
  while headA != headB
    headA = headA.next
    headB = headB.next
    return nil if headA.nil? || headB.nil?
  end
  return headA
end

def getLength(head)
  length = 0
  while head
    length += 1
    head = head.next
  end
  return length
end

def moveHead(head, steps)
  steps.times { head = head.next }
  return head
end
