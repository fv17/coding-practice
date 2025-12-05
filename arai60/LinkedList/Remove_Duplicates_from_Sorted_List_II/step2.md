# 専門家の反応
## コメント集
- https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.xzxd7jwvkwc5

## ループ処理は仕事の「引き継ぎ」を考えると理解しやすい
- リンク先の例以外も「引き継ぎ」で検索するといくつか引っ掛かる
  - https://discord.com/channels/1084280443945353267/1195700948786491403/1197102971977211966

## 余計な変数を保持しない方が、短期記憶容量を節約でき、可読性が高まる
- nextNodeを別変数として持たず、node.nextで直接参照する方がシンプル
  - https://github.com/goto-untrapped/Arai60/pull/43#discussion_r1697180833

## 意味のある変数を置くことで、可読性が高まる(着目している対象には名前をつけてあげたらいい)
- nodeとnextNodeは分かりにくい。nodeは確定済みノードの末尾、nextNodeは検証中の対象なので、savedとcheckingの方が役割が明確
- tail / node などの命名もありうる
  - https://github.com/goto-untrapped/Arai60/pull/43#discussion_r2087200486
  - https://github.com/goto-untrapped/Arai60/pull/43#discussion_r1695372547

## 簡単な方から説明することで読みやすくなる
- if-else どちらを上に書くかは、選択の余地があるので、どちらのほうが自然言語として座りがいいかを考える
```ruby
# 改善前
while A
  if B
    X(複雑)
  else
    Y（簡単）
  end
  
  Z
end

# 改善後
while A
  # 簡単な処理を if で先に処理して next で抜ける
  if !B
    Y（簡単）
    Z
    next
  end
  
  X(複雑)
  Z
end
```
- https://discord.com/channels/1084280443945353267/1195700948786491403/1196701558382018590
- https://discord.com/channels/1084280443945353267/1227073733844406343/1228598526712483902

## 発想の仕方
- 手作業でこの重複削除の作業をすることを考えると、重複を1つにまとめる作業と最後に残った一つを消す作業の二段階に分かれるのではないかと思っていて
  その場合って、重複ノードをバーっと消していって、その後で「じゃあ最後に残った一つも消すか」ってやると思う
  - https://github.com/rinost081/LeetCode/pull/6#discussion_r1745298716
- 手作業の重要性
  - https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.7n6wwffw10hb 

## 変数名
- 変数名は動詞で始まると違和感
  - https://github.com/cheeseNA/leetcode/pull/9/files#r1536595990