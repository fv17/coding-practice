# 専門家の反応
- コメント集
  - https://docs.google.com/document/d/11HV35ADPo9QxJOpJQ24FcZvtvioli770WWdZZDaLOfg/edit?tab=t.0#heading=h.ns0bie22a6m
- pair の対応の取り方が自然になるようにする
  - https://github.com/bumbuboon/Leetcode/pull/7/files#r1812398714
- 連想する内容
  - チョムスキー階層、type-2、文脈自由文法、プッシュダウンオートマトン
    - https://discord.com/channels/1084280443945353267/1206101582861697046/1216936437648457738
- 不正値が入力された場合
  - https://discord.com/channels/1084280443945353267/1226508154833993788/1227171332131786774
- 条件式をシンプルに && 複数の処理を1行で書かない
  - https://discord.com/channels/1084280443945353267/1334041281902547036/1337088213507903593
  - https://github.com/saagchicken/coding_practice/pull/21#discussion_r2009403853

# TODO 
- 本を読んでみるのも良さそう
  - やさしい計算理論: 有限オートマトンからチューリング機械まで
    - https://www.amazon.co.jp/dp/4781914136

# 知識の補填
- String#each_char
  - https://docs.ruby-lang.org/ja/latest/method/String/i/each_char.html
- Hash#key
  - https://docs.ruby-lang.org/ja/latest/method/Hash/i/key.html
  - 該当するキーが複数存在する場合
    - どのキーを返すかは不定（ドキュメント記載）
    - 興味本位で現在の実装を見る。一番最初に見つけたキーを返していた（変わりうる）
      - https://github.com/ruby/ruby/search?q=rb_hash_key+path%3Ahash.c

# 自己レビュー
- step2.rb に記載のコードでは、「閉じ括弧の場合、stack.pop から算出した期待値と一致するよね」という実装
- しかし、「閉じ括弧の場合、stack.pop が閉じ括弧に対応した括弧だよね」と考える方がしっくりくる
```ruby
def is_valid(s)
  pair = { '(' => ')', '[' => ']', '{' => '}' }
  stack = []
  brackets = s.chars

  brackets.each do |bracket|
    if pair.keys.include?(bracket)
      stack.push(bracket)
      next
    end
    
    return false if stack.pop != pair.key(bracket)
  end

  stack.empty?
end
```