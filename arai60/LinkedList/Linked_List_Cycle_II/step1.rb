# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  return nil if head.nil?

  visited = []
  node = head

  while node
    return visited.index(node) if visited.include?(node)

    visited.add(node)
    node = node.next
  end

  nil
end
