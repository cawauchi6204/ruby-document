# 出力
# puts "hogehoge"

# puts 2

# puts 1 == 2

# 変数宣言
# apple = "りんご"
# puts apple
# number = 1
# puts number
# is_number = true
# puts apple == number

# 配列
# Rubyの場合

# numbers = [1,2,3,4,5]
# puts numbers

# 繰り返し処理
# numbers = [1,2,3,4,5]
# numbers.each do|number|
#   puts number * 100
# end

# ハッシュ
# user = {
#   name:'yamada',
#   age:33
# }

# puts user
# puts user[:name]
# user[:gender] = "男"
# puts user[:gender]

# 関数
# def introduce(name,age)
#   puts "私の名前は#{name}で、#{age}歳です"
# end
# introduce('山田',33)

# def introduce(name:,age:)
#   puts "私の名前は#{name}で、#{age}歳です"
# end
# # introduce('山田',33)これはアウト
# introduce(age:33,name:"山田")
# introduce(name:"山田",age:33)

# if文

# bool = true
# if bool
#   puts'真です！'
# else
#   puts '偽です！'
# end

#1行で書く場合
# bool = true
# puts bool if bool

# ズンドコきよしアプリ

def zun_doko
	if [true, false].sample
		puts "ずん、"
		return true #returnはつけてもつけなくてもおk
	else
		puts "どこ、"
		return false
	end
end

# リーチ時の演出
def riichi
	puts '---------------------'
	puts '↓↓↓↓↓↓くるか！?↓↓↓↓↓↓↓'
	puts '---------------------'
	sleep 1
end

def hazure
	puts '🥺🥺🥺🥺🥺🥺🥺🥺🥺🥺'
	puts 'ダメだった'
	puts '🥺🥺🥺🥺🥺🥺🥺🥺🥺🥺'
end

# ズンドコきよし開始
def start
	score = 0

	puts '---------------------'
	puts 'START!!!!!'
	puts '---------------------'

	4.times do
		if zun_doko
			score += 1
		else
      return hazure
		end
	end

	if score == 4
		#普通の書き方
		riichi
	end

  # riichi if score == 4 #便利な書き方

	if !zun_doko && score == 4
		sleep 1
		puts '🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆'
		puts 'キ・ヨ・シ！！！！！！'
		puts '🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆'
  else
    sleep 1
		hazure
	end
end

start
# 10.times { start }
