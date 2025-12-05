# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  node = head

  while node && node.next
    if node.val == node.next.val
      node.next = node.next.next
    else
      node = node.next
    end
  end

  head
end
