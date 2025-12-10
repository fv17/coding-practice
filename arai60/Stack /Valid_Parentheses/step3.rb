# 感想
# - if bracket.match(/[({[]/) だとパッと見で分かりにくかった
# - 行数は増えるが、pairは1行で書かない方が読みやすい
# - stack.size == 0 / stack.length == 0 / stack.size.zero? など選択肢はあるが、stack.empty? が一番直感的で好み
# - stack.pop != expected_open_bracket か expected_open_bracket != stack.pop かはその時の考えた手作業順により、毎回変わった
def is_valid(s)
  pair = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }
  stack = []
  brackets = s.chars

  brackets.each do |bracket|
    if ['(', '{', '['].include?(bracket)
      stack.push(bracket)
      next
    end

    expected_open_bracket = pair.key(bracket)
    return false if stack.pop != expected_open_bracket
  end

  stack.empty?
end
