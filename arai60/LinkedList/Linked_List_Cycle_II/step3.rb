# ウサギとカメのアルゴリズムを用いた解法(1回目)
def detectCycle(head)
  return nil if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    break if slow.equal?(fast)
  end

  return nil unless fast && fast.next

  slow = head

  until slow.equal?(fast)
    slow = slow.next
    fast = fast.next
  end

  slow
end

# ウサギとカメのアルゴリズムを用いた解法(2回目)
def detectCycle(head)
  return nil if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    break if slow.equal?(fast)
  end

  return nil unless fast && fast.next

  slow = head

  until slow.equal?(fast)
    slow = slow.next
    fast = fast.next
  end

  slow
end

# ウサギとカメのアルゴリズムを用いた解法(3回目)
def detectCycle(head)
  return nil if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    break if slow.equal?(fast)
  end

  return nil unless fast && fast.next

  slow = head

  until slow.equal?(fast)
    slow = slow.next
    fast = fast.next
  end

  slow
end

# Setを用いた解法(1回目)
def detectCycle(head)
  return nil if head.nil?

  visited = Set.new
  node = head

  while node
    return node if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  nil
end

# Setを用いた解法(2回目)
def detectCycle(head)
  return nil if head.nil?

  visited = Set.new
  node = head

  while node
    return node if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  nil
end

# Setを用いた解法(3回目)
def detectCycle(head)
  return nil if head.nil?

  visited = Set.new
  node = head

  while node
    return node if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  nil
end
