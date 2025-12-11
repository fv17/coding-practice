# 解法1: 再帰無し
def add_two_numbers(l1, l2)
  dummy_head = ListNode.new(nil)
  previous = dummy_head
  carry = 0

  while l1 || l2 || carry != 0
    sum = carry
    sum += l1&.val || 0
    sum += l2&.val || 0

    current = ListNode.new(sum % 10)
    previous.next = current

    previous = current
    carry = sum / 10
    l1 = l1&.next
    l2 = l2&.next
  end

  dummy_head.next
end

# 解法2: 再帰あり
def add_two_numbers_helper(l1, l2, carry = 0)
  return if l1.nil? && l2.nil? && carry.zero?

  sum = carry
  sum += l1&.val || 0
  sum += l2&.val || 0

  current = ListNode.new(sum % 10)
  current.next = add_two_numbers_helper(l1&.next, l2&.next, sum / 10)

  current
end

def add_two_numbers(l1, l2)
  add_two_numbers_helper(l1, l2, 0)
end
