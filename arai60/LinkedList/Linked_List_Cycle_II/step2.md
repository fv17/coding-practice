# 専門家の反応
## コメント集
- https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.jfs03xpyyrfl

## コーディングの練習目的を再確認
- あるコードを見ると、専門家集団のメンバーは、ある程度ブレはあるものの似たような反応をし、同じような考えを持つので、同じ反応をするようにし、そのブレの範囲もイメージできるようにする
- 何を見た時にどのような反応をするか、の具体例はリンク先を参照
- https://discord.com/channels/1084280443945353267/1252267683731345438/1252475584316047391

## リファレンスを読むことの習慣化
- 地道に書く以外に、すでに用意されていないか？と考えてみる
- 新しいメソッドが追加された時などに、より可読性の高いコードを書ける
- https://github.com/rayofhopejp/leetcode/pull/2/files#r1843066451

## 解法の選択肢
- Follow up: Can you solve it using O(1) (i.e. constant) memory? と問題文の最後に記述されていたので別解はある
- ウサギとカメのアルゴリズムでも解答可能。ただし、アルゴリズム自体は「常識」ではない
- https://discord.com/channels/1084280443945353267/1246383603122966570/1252209488815984710
- ウサギとカメのアルゴリズムでも解ける意味はあるのか？ => 自然言語での説明を理解できるかなどコミュニケーション能力を測れる
- https://discord.com/channels/1084280443945353267/1262761766887358557/1316089240680923257
- 構造がいくつかあるため、下記リンクを参照
- https://discord.com/channels/1084280443945353267/1221030192609493053/1225674901445283860
- fast がもはや fast ではないという指摘が散見される
- https://github.com/goto-untrapped/Arai60/pull/22#discussion_r1617145032
- 理解を促す資料
- https://github.com/ntanaka1984/leetcode/pull/2#issuecomment-3106759861
- https://www.youtube.com/watch?v=Oz7-VlcTpSQ

## 改行は控えめに？
- Use blank lines in functions, sparingly, to indicate logical sections.
- https://peps.python.org/pep-0008/#blank-lines
- 悪い例
```python
def process_user(user):

    validate_user(user)

    normalize(user)

    save_user(user)

    send_welcome_mail(user)
```
- 良い例(「検証＆正規化」と「保存＆通知」の2フェーズ)
```python
def process_user(user):
    validate_user(user)
    normalize(user)

    save_user(user)
    send_welcome_mail(user)
```
- 具体例：https://github.com/kazizi55/coding-challenges/pull/2#discussion_r2286870559

## 計算時間を見積もる
- まだ意識できていないので注意
- https://github.com/Kazuryu0907/LeetCode_Arai60/pull/18/files#r2397174396

## コードを読みやすくする
- 自然言語で考えた順序と同じように書く
- 20-30行を超える関数があったら分割したほうがいいのでは？と考える
- https://github.com/tayzarnw/LeetCode/pull/4#discussion_r1550231411

## ぶら下がりifを避ける
- 好みの問題ではあるが、後から行を足した時にリスクあり
```python
# 一見すると両方 if の中に見えるが…
if (a === 1)
  console.log('a is 1');
  console.log('hello');  // 実際は if の外。常に実行される
  
# 推奨コード（ブロックを常に使う）
if (a === 1) {
  console.log('a is 1');
}
```
- https://github.com/shintaroyoshida20/leetcode/pull/2#discussion_r2029210130

## 変数の命名
- visited, visited_nodes の場合、前者が好まれている気がする。理由は、visited でも node が入ることに齟齬が起こりにくく、またコード全体がシンプルになるからと認識している

# 感想
- Python の if not が分かりやすくて好み。Ruby の後置ifは良い
```python
# Pythonの場合
if not has_cycle:
    return None
```
```ruby
# Rubyの場合
return nil if !has_cycle?

return nil unless has_cycle?
```

# その他
## 法則を知る
- キャンベルの法則
  - 「数値指標を意思決定に強く使えば使うほど、その指標は不正や歪みの対象になり、本来モニタしたかった社会的プロセスを逆にゆがめてしまう」という経験則
  - 例：売上数字 => 昇進・評価・ボーナス => ごまかし・粉飾
  - 例：フロイドのアルゴリズムも、本来は授業や本、雑談の中で知るような“背景知識”
- ジョシュアツリーの法則(書籍「プリンシプル　オブ　プロブラム」のも記載あり)
  - 新しい知識や名前を得た途端、それに関連するものが急に目につくようになるという心理現象
  - エンジニアリングチームでの活用例：ユビキタス言語の使用。チーム内での共通語を作り、意思疎通を明確・流暢にする
  - 面白い話：バベルの塔。神様が人間に異なる言語を与えたことでプロジェクトを崩壊させた
## 完走者のコメントを後で読んでみる
- https://github.com/fuga-98/arai60/pull/58/files
