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

    return true if slow == fast
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

    return true if slow == fast
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

    return true if slow == fast
  end

  false
end

# Setを使った解法(1回目)
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  visited = Set.new
  node = head

  while node
    return true if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  false
end

# Setを使った解法(2回目)
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  visited = Set.new
  node = head

  while node
    return true if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  false
end

# Setを使った解法(3回目)
# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  visited = Set.new
  node = head

  while node
    return true if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  false
end