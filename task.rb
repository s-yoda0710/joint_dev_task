# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斉藤"
  p names
end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  array = array1 + array2
  p array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  p "配列の中に、3は#{numbers.count(3)}個あります。"
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!
  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts <<~TEXT
         array1実行結果
         #{array1.empty?}
         array2実行結果
         #{array2.empty?}
       TEXT
end

def q6
  numbers1 = [1, 2, 3, 4, 5]
  # 以下に回答を記載
  # new_numbers = []
  # numbers1.each do |number|
  #   new_numbers << number * 10
  # end
  # p new_numbers

  numbers1 = numbers1.map { |n| n * 10 }
  p numbers1
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # array = array.map { |n| n.to_i }
  array.map!(&:to_i)
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  # programming_languages = programming_languages.map(&:capitalize)
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name, i|
    puts "会員No.#{i} #{name}さん"
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "#{food}：好物です。"
    else
      puts "#{food}：まあまあ好きです。"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
  # 以下に回答を記載
  # uniq_sports = sports.flatten.uniq
  # uniq_sports.each.with_index(1) do |uniq_sport, i|
  #   puts "No#{i} #{uniq_sport}"
  # end
  puts "ユーザーの趣味一覧"
  sports.flatten!.uniq!.each.with_index(1) do |sport, i|
    puts "No#{i} #{sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  p data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # # 以下に回答を記載
  # user_data.age = update_data.age
  # user_data[:address] = update_data[:address]
  user_data.update(update_data)
  p user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  key_data = data.keys
  # data.each do |key, value|
  #   key_data << key
  # end

  p key_data
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  puts data1.key?(:age) ? "OK" : "NG"
  puts data2.key?(:age) ? "OK" : "NG"
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 },
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user.age}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end
  def info
    puts <<~TEXT
      名前:#{@name}
      年齢:#{@age}
      性別:#{@gender}
    TEXT
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(name:, age:)
    @name = name
    @age = age
  end
  def introduce
    if @age >= 20
      "こんにちは、#{@name}と申します。宜しくお願いいたします。"
    else
      "はいさいまいど〜、#{@name}です！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_reader :name
  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_reader :name, :age
  def initialize(name:, age:)
    @name = name
    @age = age
  end
end

class Zoo
  # 以下に回答を記載
  def initialize(zoo_info)
    @entry_fee = zoo_info[:entry_fee]
  end

  def info_entry_fee(user)
    price = case user.age
    when 0..5
      @entry_fee[:infant]
    when 6..12
      @entry_fee[:children]
    when 13..64
      @entry_fee[:adult]
    else 65..120
      @entry_fee[:senior]
    end
    puts "#{user.name}さんの入場料金は#{price}円です。"
  end
end

def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108),
  ]
  users.each do |user|
    zoo.info_entry_fee(user)
  end
end
