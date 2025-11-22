# ウサギとカメのアルゴリズム(1回目)
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    return true if slow.equal?(fast)
  end

  false
end

# ウサギとカメのアルゴリズム(2回目)
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    return true if slow.equal?(fast)
  end

  false
end

# ウサギとカメのアルゴリズム(3回目)
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    return true if slow.equal?(fast)
  end

  false
end