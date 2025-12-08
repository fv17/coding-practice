# 専門家の反応
- step2 で読み切れなかったコメント集を読んでいく
 
## 再帰を使わない解法で、最後の carry については書き方が2つある
- ループ処理を抜けた後にノードを追加する方法
- ループの条件文に || carry を足す方法
  - https://github.com/SanakoMeine/leetcode/pull/6/files#diff-c1cddda277d896937d58f545499e8e7dc43f3c87f29448b9fdf43c4da1d285a0R73

## 意味のある変数を付ける
- 以下の変数設定は分かりやすく好み
  - https://github.com/SanakoMeine/leetcode/pull/6/files#diff-c1cddda277d896937d58f545499e8e7dc43f3c87f29448b9fdf43c4da1d285a0R76
```python
carry, digit = divmod(sum, 10)
```
- Rubyの divmod
  - https://docs.ruby-lang.org/ja/latest/method/Numeric/i/divmod.html

## OS知識の入門（Arai60完了後）
- 30日でできる! OS自作入門
  - https://www.amazon.co.jp/dp/B00IR1HYI0
- 工学基礎シリーズ オペレーティングシステム
  - https://www.amazon.co.jp/dp/B0BGPDXW9N
- その他CS系の基礎知識入門は以下参照
  - https://kitakenbb.hatenablog.com/entry/2025/01/08/235548
  - https://nuc.hatenadiary.org/entry/2021/03/31