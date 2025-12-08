# 解法1: 仕事を引き継がない
# 感想
# - value_to_remove == current.next.val の条件式を一瞬、value_to_remove == current.val と書いた
def delete_duplicates(head)
  current = head

  while current && current.next
    if current.val != current.next.val
      current = current.next
      next
    end

    value_to_remove = current.val
    while current.next && value_to_remove == current.next.val
      current.next = current.next.next
    end
    current = current.next
  end

  head
end

# 解法2: 仕事を引き継ぐ
# 感想
# - シンプルである。解法1より読んだ時に分かりやすい。こちらの方が好み
def delete_duplicates(head)
  current = head

  while current && current.next
    if current.val == current.next.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end
