# 解法1: 二重ループ
def delete_duplicates(head)
  node = head

  while node
    while node.next && node.val == node.next.val
      node.next = node.next.next
    end
    node = node.next
  end

  head
end

# 解法2: 一重ループ
def delete_duplicates(head)
  return head if head.nil?

  node = head

  while node.next
    if node.val == node.next.val
      node.next = node.next.next
    else
      node = node.next
    end
  end

  head
end