# 専門家の反応

## コメント集
- https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.lxzt19oefrb8

## 再帰を使って解く
- Tail recursion
  - https://discord.com/channels/1084280443945353267/1235829049511903273/1238142937028890634
```ruby
def add_two_numbers(l1, l2)
  dummy_head = ListNode.new(0)
  add_two_numbers_helper(dummy_head, l1, l2, 0)
  dummy_head.next
end

def add_two_numbers_helper(prev, l1, l2, carry)
  # ① 終了条件
  return if l1.nil? && l2.nil? && carry.zero?

  # ② 現在の桁の合計を計算
  sum = carry
  if l1
    sum += l1.val
    l1 = l1.next
  end

  if l2
    sum += l2.val
    l2 = l2.next
  end

  # ③ 新しいノードを作って prev の次にぶら下げる
  prev.next = ListNode.new(sum % 10)

  # ④ 繰り上がり (sum / 10) と、次の桁のノードで、もう一度自分を呼ぶ
  add_two_numbers_helper(prev.next, l1, l2, sum / 10)
end
```

- ダミーノードを使わずに、下位桁から順にノードを返していく実装
  - https://discord.com/channels/1084280443945353267/1196472827457589338/1197166381146329208
```ruby
def add_two_numbers(l1, l2, carry = 0)
  # 終了条件：両方とも末尾まで来ていて、繰り上がりもない
  return nil if l1.nil? && l2.nil? && carry.zero?

  v1 = l1 ? l1.val : 0
  v2 = l2 ? l2.val : 0
  total = v1 + v2 + carry

  # 今の桁のノードを作る（1 の位）
  node = ListNode.new(total % 10)

  new_carry = total / 10
  new_l1 = l1&.next
  new_l2 = l2&.next

  # 上位の桁を再帰的に作る
  upper_digits = add_two_numbers(new_l1, new_l2, new_carry)
  node.next = upper_digits

  node
end
```

## 再帰を使わないで解く
```ruby
def add_two_numbers(l1, l2)
  dummy = ListNode.new(nil)
  prev = dummy
  carry = false
  current = nil

  while l1 || l2
    sum = 0
    sum += l1.val if l1
    sum += l2.val if l2
    sum += 1 if carry

    current = ListNode.new(sum % 10)
    prev.next = current
    
    carry = sum >= 10
    prev = current
    l1 = l1&.next
    l2 = l2&.next
  end

  current.next = ListNode.new(1) if carry
  
  dummy.next
end
```

# TODO
## 再帰関数を学ぶ
- https://qiita.com/drken/items/23a4f604fa3f505dd5ad

# 感想
## コーディング練習の進め方
- いきなりコメント集やPRを全部見ていくと、情報が多いので頭に入らず理解が進まない
- そのため、まずコメント集から辿れる主要な解法パターンを拾ってきて、読んで、書いて、理解する
- そうすると土台ができるので、コメント集の残りや他の方のPRを読むとスムーズに理解ができる