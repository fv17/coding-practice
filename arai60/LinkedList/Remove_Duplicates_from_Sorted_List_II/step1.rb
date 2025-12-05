# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  # 重複している値を探す
  node = head
  duplicate_numbers = Set.new

  while node && node.next
    duplicate_numbers.add(node.val) if node.val == node.next.val
    node = node.next
  end

  # 重複している値を持つ node を除外する
  node = head
  result = nil

  while node
    result = node if result.nil? && !duplicate_numbers.include?(node.val)

    if node.next && duplicate_numbers.include?(node.next.val)
      node.next = node.next.next
    else
      node = node.next
    end
  end

  result
end