# 重複が見つかったら仕事を引き継がず、該当する値は全てスキップするパターン
# 感想：手動で考えたことがそのままコードに落とし込まれている印象があり理解しやすい
def delete_duplicates(head)
  dummy = ListNode.new(nil, head)
  tail = dummy # 確定した node の末尾
  current = head # 現在操作中の node

  while current && current.next
    # 簡単なケース: （重複していない）
    if current.val != current.next.val
      tail = current
      current = current.next
      next
    end

    # 複雑なケース: current 以降が同じ値で続く場合、同じ値を全部飛ばす
    value_to_remove = current.val
    while current && current.val == value_to_remove
      current = current.next
    end
    tail.next = current
  end

  dummy.next
end

# 重複が見つかったら仕事を引き継ぐパターン
# 参考：https://github.com/kazizi55/coding-challenges/pull/4/files
# 感想：重複を見つけただけ（value_to_skipに値を入れるだけ）で引き継ぐ箇所が理解しにくい。tail.next = nil もなぜ必要か、末尾が重複要素のパターンを考えるまで分からなかった
def delete_duplicates(head)
  dummy = ListNode.new(nil, head)
  tail = dummy
  current = head
  value_to_skip = nil

  while current
    if current.val == value_to_skip
      current = current.next
      next
    end

    if current.next && current.val == current.next.val
      value_to_skip = current.val
      next
    end

    tail.next = current
    tail = current
    current = current.next
  end

  tail.next = nil
  dummy.next
end
