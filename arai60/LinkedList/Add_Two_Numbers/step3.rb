# 解法1: 再帰（dummyを使う）
def add_two_numbers_helper(l1, l2, carry, prev)
  return if l1.nil? && l2.nil? && carry.zero?

  sum = carry
  sum += l1.val if l1
  sum += l2.val if l2

  current = ListNode.new(sum % 10)
  prev.next = current

  prev = current
  add_two_numbers_helper(l1&.next, l2&.next, sum / 10, prev)
end

def add_two_numbers(l1, l2)
  dummy = ListNode.new(nil)
  add_two_numbers_helper(l1, l2, 0, dummy)
  dummy.next
end

# 解法2: 再帰（dummyを使わない）
def add_two_numbers_helper(l1, l2, carry)
  return if l1.nil? && l2.nil? && carry.zero?

  sum = carry
  sum += l1.val if l1
  sum += l2.val if l2

  current = ListNode.new(sum % 10)
  current.next = add_two_numbers_helper(l1&.next, l2&.next, sum / 10)

  current
end

def add_two_numbers(l1, l2)
  add_two_numbers_helper(l1, l2, 0)
end

# 解法3: 再帰を使わない
# step2 とほぼ同じ実装となったため略
