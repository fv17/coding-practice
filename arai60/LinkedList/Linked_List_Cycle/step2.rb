# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# ウサギとカメのアルゴリズム(参考)

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?

  slow = head # カメ（1歩ずつ）
  fast = head # ウサギ（2歩ずつ）

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    return true if slow == fast
  end

  false
end

# 自分の考えた解法(1回目)
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

# 自分の考えた解法(2回目)
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

# 自分の考えた解法(3回目)
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

# 「3連続ミスなし10分以内」ルールはstep2ではなくstep3でした...
