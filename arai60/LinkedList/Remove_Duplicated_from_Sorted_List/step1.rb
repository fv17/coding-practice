def delete_duplicates(head)
  previous_node = nil
  node = head

  while node
    if previous_node && previous_node.val == node.val
      previous_node.next = node.next
      node = node.next
    else
      previous_node = node
      node = node.next
    end
  end

  head
end