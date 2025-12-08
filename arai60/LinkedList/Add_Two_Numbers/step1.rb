def change_to_number(head)
  array = []
  while head
    array.push(head.val)
    head = head.next
  end
  array.reverse.join.to_i
end

def change_to_linked_list(num)
  reverse_numbers = num.to_s.split('').reverse.map(&:to_i)

  list_node_array = reverse_numbers.map do |n|
    ListNode.new(n, nil)
  end

  list_node_array.each_with_index do |node, i|
    node.next = list_node_array[i + 1]
  end

  list_node_array[0]
end

def add_two_numbers(l1, l2)
  sum = change_to_number(l1) + change_to_number(l2)
  change_to_linked_list(sum)
end
