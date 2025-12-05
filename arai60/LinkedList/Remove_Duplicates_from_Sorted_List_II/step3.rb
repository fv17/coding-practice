def delete_duplicates(head)
  dummy = ListNode.new(nil, head)
  tail = dummy
  current = head

  while current && current.next
    if current.val != current.next.val
      tail = current
      current = current.next
      next
    end

    value_to_remove = current.val
    while current && current.val == value_to_remove
      current = current.next
    end
    tail.next = current
  end

  dummy.next
end