# ウサギとカメのアルゴリズム（1回目: Youtube動画を見て書いてみる）
# 改善点1: ネストが深い
# 改善点2: loopよりもuntilを使った方が自然言語に近い
def detectCycle(head)
  return nil if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    if slow.equal?(fast)
      slow = head

      loop do
        return slow if slow.equal?(fast)

        slow = slow.next
        fast = fast.next
      end
    end
  end

  nil
end

# ウサギとカメのアルゴリズム（2回目: 1回目の改善点を考慮、while内の複雑な処理をメソッド化）
# 改善点1: 変数名が長いため冗長

def find_cycle_start(head, intersection)
  from_head = head
  from_intersection = intersection

  until from_head.equal?(from_intersection)
    from_head = from_head.next
    from_intersection = from_intersection.next
  end

  from_head
end

def detectCycle(head)
  return nil if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    return find_cycle_start(head, fast) if slow.equal?(fast)
  end

  nil
end

# ウサギとカメのアルゴリズム（3回目: メソッド化せず、処理を分ける）
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

  until slow.equal?(fast)
    slow = slow.next
    fast = fast.next
  end

  slow
end

# Setを用いた解法（復習）
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
