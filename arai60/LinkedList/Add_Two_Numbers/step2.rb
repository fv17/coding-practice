# 解法1: 再帰を利用する（ダミーノードあり）
# [手順]
# 1. ノード同士を足し合わせて合計を出し、ノードを作成
# 2. 次のノードに移動し、手順1.と同様に合計を出していく
# 3. 先頭ノード以外は、繰り上がりを考慮し、また前のノードと紐づける必要がある
# [補足]
# - 次のノードを作成する時に1つ前のノードの next を設定するため、再帰関数に prev を渡す
# [感想]
# - 再帰に慣れておらず、終了条件を忘れることあり
# - 処理自体は step1 のものよりもシンプルで分かりやすい
def add_two_numbers_helper(prev, l1, l2, carry)
  return if l1.nil? && l2.nil? && carry.zero?

  sum = carry

  if l1
    sum += l1.val
    l1 = l1.next
  end

  if l2
    sum += l2.val
    l2 = l2.next
  end

  node = ListNode.new(sum % 10)
  prev.next = node

  add_two_numbers_helper(node, l1, l2, sum / 10)
end

def add_two_numbers(l1, l2)
  dummy = ListNode.new(nil)
  add_two_numbers_helper(dummy, l1, l2, 0)
  dummy.next
end

# 解法2: 再帰を利用する（ダミーノード無し）
# [手順]
# 1. ノード同士を足し合わせて合計を出し、ノードを作成
# 2. そのノードに、再帰関数で得た次のノードを紐づける
# 3. また、各ノード作成時には繰り上がりを考慮する必要がある
# [補足]
# - ノードを作成する時に next を設定するため、再帰関数の返り値が next node で必要がある
# [感想]
# - 分かりやすい。が、再帰に慣れていないため、まだ自分で発想できる気がしない
# - 解法1 と異なり、後置ifや&.演算子を多用したが、スッキリ書けて全体のロジックが追いやすくなった印象
# - Discord で参考にしたコードから new_hoge 系の変数を削除したが、あった方が意図が明確だろうか
# - carry にデフォルト値を設定した方が、0 or 1 という意図が明確になった印象
def add_two_numbers_helper(l1, l2, carry = 0)
  return if l1.nil? && l2.nil? && carry.zero?

  sum = carry
  sum += l1.val if l1
  sum += l2.val if l2

  node = ListNode.new(sum % 10)

  upper_digit = add_two_numbers_helper(l1&.next, l2&.next, sum / 10)
  node.next = upper_digit

  node
end

def add_two_numbers(l1, l2)
  add_two_numbers_helper(l1, l2, 0)
end

# 解法3: 再帰を利用しない
# [手順]
# 1. いずれかの連結リストが末尾に到達するまでループ処理を行う
# 2. 各ループ処理では、繰り上がりを考慮しつつ合計を出し、ノードを作成
# 3. ノード作成時に、1つ前のノードの next として紐づける
# 4. ループ処理が完了後、繰り上がりがあれば、最後に val = 1 のノードを紐づける
# [感想]
#
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

  # 補足: while l1 || l2 || carry とすると↓の行を消せる
  current.next = ListNode.new(1) if carry

  dummy.next
end

# 解法4: step1の解法をブラッシュアップ
# [手順]
# 1. 2つのリストをそれぞれ数値に変換し、合計を出す
# 2. その値を連結リストに変換する
# [感想]
# - Ruby には digits などの便利なメソッドがある
# - 一桁ずつ計算する時に place_val を使って各桁を計算する方法は面白かった
# - ループ処理を「仕事の引き継ぎ」と考えることが少しずつ身についてきた。再帰も似ている気がする
def list_to_integer(node)
  result = 0
  place_val = 1

  while node
    result += node.val * place_val
    place_val *= 10
    node = node.next
  end

  result
end

def integer_to_list(number)
  head = nil
  tail = nil # 「仕事の引き継ぎ」を考えると、なぜ tail が必要か分かる。先頭以外の場合、ノード作成時に一つ前のノードと紐づける必要がある

  number.digits.each do |digit|
    node = ListNode.new(digit)

    if head.nil?
      head = node
    else
      tail.next = node
    end

    tail = node
  end

  head
end

def add_two_numbers(l1, l2)
  sum = list_to_integer(l1) + list_to_integer(l2)
  integer_to_list(sum)
end
