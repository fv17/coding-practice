# 専門家の反応
## コメント集
- https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.voz9njv1gtqy
## 発想について
- https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.w704ahvong3m
- この問題で問われていることは、連結リストの next の付け替えができるか
## 早期リターンについて
- 結果が変わらなければ削除して良い。エッジケースに対応しているなどと、意図を明示したい場合は残しても良さそう
- https://github.com/kazizi55/coding-challenges/pull/3#discussion_r2324093858
## 解法の選択肢
- 二重ループで書く方法
- https://github.com/t-ooka/leetcode/pull/10#discussion_r2286951706

# AIからのアドバイス
## テストケースを考えること
- この場合、以下と考えてみました
  - 通常ケース
    - 重複あり(112)
    - 重複なし(123)
  - その他のケース
    - 空(nil)
    - 要素1(1)
    - 全て同じ値(111)
    - 途中・末尾に重複(11223, 12233)
    - 重複継続あり(12223)