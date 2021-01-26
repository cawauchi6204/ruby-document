---
marp: true
theme: gaia
header: "Rubyを勉強するチャンネル"
---

## 自己紹介

```json
わたなべさん = {
  :職業 => "フリーランスエンジニア",
  :エンジニア歴 =>"7年",
  :趣味 => "読書",
  :今仕事で使っている技術 =>"TypeScript,React"
}

かわうち = {
  :職業 => "フロントエンドエンジニア",
  :エンジニア歴 => "6ヶ月",
  :趣味 => "将棋を見ること",
  :今仕事で使っている技術 => "TypeScript,React"
}
```

---
## このチャンネルの趣旨
- ベテランエンジニアと駆け出しエンジニアがやったことがない言語(Ruby)を一緒に勉強したらどうなるのか(語彙力)
## 狙い
- 1人で解説しているチャンネルは多いが2人でしかも使ったことない言語を勉強しているチャンネルはみたことがなく、おもしろそう。
- アクティブラーニングを狙う
---
#### アクティブラーニングとは
アクティブ・ラーニングは学修者が能動的に学習に取り組む学習法の総称である。
> wikipediaより引用

学習定着度は自分が主体的になるほど高くなるということ。

![bg 100% right](https://blogimg.goo.ne.jp/user_image/51/f4/f781fcd06ad08fb4d51f512e5602924d.png)

---

#### 環境構築(パソコンでRubyを使えるようにすること)

プロゲートの「Rubyの開発環境を用意しよう！」がわかりやすいです(時間がかかってしまうので今回僕たちはすでに構築済みです)

環境
- ### Ruby:3.0.0
- ### vscode

---
#### 一番重要な出力の方法

```rb
puts "hogehoge"

puts 2

puts 1 === 2
```

#### 変数宣言

```rb
apple = "りんご"
number = 1
is_number = true
```
---

#### 配列

```rb
numbers = [1,2,3,4,5]
puts numbers
```

#### 繰り返し処理

```rb
numbers = [1,2,3,4,5]
numbers.each do|number|
  puts number * 100
end
```

---



#### ハッシュ

```rb
user = {
  name:'yamada',
  age:33
}

puts user
puts user[:name]
user[:gender] = "男"
```

---

#### 関数

```rb
def introduce(name,age)
  puts "私の名前は#{name}で、#{age}歳です"
end
introduce('山田',33)

def introduce(name:,age:)
  puts "私の名前は#{name}で、#{age}歳です"
end
# introduce('山田',33)これはアウト
introduce(age:33,name:"山田")
introduce(name:"山田",age:33)
```

---
#### if文

```rb
bool = true
if bool
  puts bool
end
```

1行で書く場合
```rb
bool = true
puts bool if bool
```


---
### ズンドコきよしアプリ

> Javaの講義、試験が「自作関数を作り記述しなさい」って問題だったから
「ズン」「ドコ」のいずれかをランダムで出力し続けて「ズン」「ズン」「ズン」「ズン」「ドコ」の配列が出たら「キ・ヨ・シ！」って出力した後終了って関数作ったら満点で単位貰ってた

---
### 流れ
- 変数scoreを0にセットしておいて、「ずん」が出るごとにscoreを1ずつ加算していく
- score = 4、つまり、「ずん」が四回連続で出たらリーチの演出
- scoreが4でなければ「残念でした」という文字が出力される
- リーチの時に「どこ」が出ればきよしが出力される
---
