# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  nodes = []
  node = head

  while node
    return true if nodes.include?(node)
    nodes << node
    node = node.next
  end

  false
end
