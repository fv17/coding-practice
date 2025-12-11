# 思考プロセス

## 解法の選択肢
- まず、与えられた2つのLinkedListを数値にする
- 次に、その数値を足し合わせて合計を出す
- 最後に、合計をLinkedListに変換する

## 上記解法のデメリット(step2での見直し)
- 文字列や配列をたくさん作るので、計算量・メモリ的には重い
- そのため、リストの長さがもっと大きかったら厳しい

# TODO
## 数値を配列に分解する方法
```ruby
16.digits # => [6, 1]
```
- https://docs.ruby-lang.org/ja/latest/method/Integer/i/digits.html

## 配列のドキュメントを見る
- push
  - https://docs.ruby-lang.org/ja/latest/method/Array/i/push.html
- <<
  - https://docs.ruby-lang.org/ja/latest/method/Array/i/=3c=3c.html
