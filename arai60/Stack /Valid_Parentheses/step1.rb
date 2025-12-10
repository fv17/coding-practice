# 解法：Stackを利用する
# 手順：
# 1. Open bracket の場合、Stackに溜める
# 2. Close bracket の場合、Stackから取り出し、正しい組み合わせになるか確認
# 3. 最後に、全ての bracket が正しい組み合わせになっているかを確認
def is_valid(s)
  brackets = s.chars
  pair = { ')' => '(', ']' => '[', '}' => '{' }
  stack = []

  brackets.each do |bracket|
    if bracket == '(' || bracket == '[' || bracket == '{'
      stack.push(bracket)
      next
    end

    return false if stack.pop != pair[bracket]
  end

  stack.empty?
end
