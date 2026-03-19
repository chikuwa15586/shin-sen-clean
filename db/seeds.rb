# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Fortune.destroy_all

Fortune.create!([
  {
    name: "神吉",
    image: "zeus.png",
    rarity: "god",
    probability: 10,
    message: "『神の寵愛、ここに極まれり！！』"
  },
  {
    name: "大吉",
    image: "hera.png",
    rarity: "super_rare",
    probability: 15,
    message: "『輝く未来、道は開かれた！』"
  },
  {
    name: "吉",
    image: "poseidon.png",
    rarity: "normal",
    probability: 17,
    message: "『巡る運気、光明の一筋』"
  },
  {
    name: "中吉",
    image: "athena.png",
    rarity: "normal",
    probability: 17,
    message: "『満たされる心、溢れる余裕』"
  },
  {
    name: "小吉",
    image: "apollo.png",
    rarity: "normal",
    probability: 17,
    message: "『日常に潜む、ささやかな奇跡』"
  },
  {
    name: "末吉",
    image: "aphrodite.png",
    rarity: "normal",
    probability: 15,
    message: "『上昇への助走、いざ開始！』"
  },
  {
    name: "凶",
    image: "eris.png",
    rarity: "bad",
    probability: 9,
    message: "『逆境を糧に、不屈の精神』"
  }
])

Task.destroy_all

Task.create!([
  { title: "感謝を伝える", content: "身近な人に一言『ありがとう』を伝えてみよう" },
  { title: "5分だけ掃除", content: "身の回りを5分だけ整理してみよう" },
  { title: "小さな挑戦", content: "普段やらないことを1つ試してみよう" },
  { title: "散歩する", content: "10分だけ外を歩いてみよう" },
  { title: "誰かを褒める", content: "良いと思ったことを1つ言葉にして伝えよう" },
  { title: "深呼吸する", content: "ゆっくり深呼吸を5回してみよう" },
  { title: "新しいことを学ぶ", content: "何か1つ新しい知識を調べてみよう" },
  { title: "元気に挨拶", content: "1人以上に元気な声で挨拶してみよう" },
  { title: "笑顔を作る", content: "10秒だけ笑顔を作ってみよう" },
  { title: "好きな音楽を聴く", content: "お気に入りの音楽を1曲楽しもう" },
  { title: "水を飲む", content: "コップ1杯の水を飲んでリフレッシュ" },
  { title: "姿勢を正す", content: "背筋を伸ばして5分姿勢を維持しよう" },
  { title: "ポジティブ思考", content: "今日の良かったことを1つ思い出そう" },
  { title: "小さな親切", content: "誰かにちょっとした親切を1つしてみよう" },
  { title: "デジタル休憩", content: "30分だけスマホを置いて休憩しよう" },
  { title: "空を見上げる", content: "1分だけ空を見て気分転換してみよう" },
  { title: "軽くストレッチ", content: "3分伸ばしてリラックスしよう" },
  { title: "目標を決める", content: "今日やる小さな目標を1つ決めよう" },
  { title: "日記を書く", content: "今日の出来事を一言だけ書いてみよう" },
  { title: "自分を褒める", content: "今日の自分を1つ褒めよう" }
])