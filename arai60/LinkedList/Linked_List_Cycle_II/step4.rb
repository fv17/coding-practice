# 解法1: Setを用いた解法
def detectCycle(head)
  visited = Set.new

  while head
    return head if visited.include?(head)
    visited.add(head)
    head = head.next
  end

  nil
end

# 解法2: ウサギとカメのアルゴリズムを用いた解法
def find_intersection(head)
  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    return slow if slow.equal?(fast)
  end

  nil
end

def find_cycle_start(head, intersection)
  until head.equal?(intersection)
    head = head.next
    intersection = intersection.next
  end

  head
end

def detectCycle(head)
  intersection = find_intersection(head)

  return nil unless intersection

  find_cycle_start(head, intersection)
end