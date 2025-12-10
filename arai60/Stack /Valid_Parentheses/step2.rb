def is_valid(s)
  pair = { '(' => ')', '[' => ']', '{' => '}' }
  stack = []
  brackets = s.chars

  brackets.each do |bracket|
    if pair.keys.include?(bracket)
      stack.push(bracket)
      next
    end

    popped = stack.pop
    expected = pair[popped]
    return false if expected != bracket
  end

  stack.empty?
end
