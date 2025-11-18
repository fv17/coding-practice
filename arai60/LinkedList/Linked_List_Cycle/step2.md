# コメントを漁る
## 代入は1行1つ
- 複数続いていると対応が見にくい
- 多重代入は止めよう、とスタイルガイドにも記載がある
```ruby
# OK
a = 1
b = 2

# NG
a, b = 1, 2
```
- https://discord.com/channels/1084280443945353267/1195700948786491403/1195724750895452220
- https://github.com/fortissimo1997/ruby-style-guide/blob/japanese/README.ja.md#parallel-assignment

## 実装方法
- 複数の書き方があることを認識する
- https://discord.com/channels/1084280443945353267/1195700948786491403/1195944696665604156

## 命名
- 省略、冗長ともに避けるべきである
- visited と命名している解答が多い模様。seenなども
- https://github.com/shintaroyoshida20/leetcode/pull/1#discussion_r2027285679

## PRへのコメント
- 角が立たない言い方
- https://github.com/MasukagamiHinata/Arai60/pull/4#discussion_r2410084390

# 知識の補填
## Set
### 概要
- 重複のない順不同の値の集合を扱うクラス
- 内部記録として Hash を利用しており、O(1)で検索可
### Example
```ruby
 s1 = Set[1, 2]                      #=> #<Set: {1, 2}>
 s2 = [1, 2, 1].to_set               #=> #<Set: {1, 2}>
 s1 == s2                            #=> true
 s1.add("foo")                       #=> #<Set: {1, 2, "foo"}>
 s1.merge([2, 6])                    #=> #<Set: {1, 2, "foo", 6}>
 s1.delete("foo")                    #=> #<Set: {1, 2, 6}>
 s1.include?(1)                      #=> true
 s1.subset?(s2)                      #=> false
 s2.subset?(s1)                      #=> true
```
### 参考
- https://docs.ruby-lang.org/ja/latest/class/Set.html
- https://qiita.com/an_sony/items/708c47d073ad709431d6

## メモリ使用量
- 1要素あたり数十バイト〜50バイトとして、 10,000要素でも 50 * 10,000 = 500KB くらい。PCのメモリが16GBなら全然余裕。
- Rubyでのメモリ使用量の確認方法
```ruby
ObjectSpace.memsize_of(set)
```
### 参考
- https://github.com/resumit30minutes/leetcode-arai60-practice/pull/2#discussion_r2463657850

## スタイルガイド
- 空行は「論理的な塊を作るために入れる」と記載されているが、様々な場面では好みも多分に含まれるはず
### 参考
- https://github.com/fortissimo1997/ruby-style-guide/blob/japanese/README.ja.md#empty-lines-between-methods