# 書き心地の比較
- 変数 brackets を削除した方がシンプルになる
- しかし、手作業として考えている時は、文字というよりも括弧として認識しているため、ループ変数を char ではなく bracket にしたい
```ruby
def is_valid(s)
  pair = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }
  stack = []
  
  s.each_char do |char|
    if ['(', '{', '['].include?(char)
      stack.push(char)
      next
    end

    expected_open_bracket = pair.key(char)
    return false if stack.pop != expected_open_bracket
  end

  stack.empty?
end

```