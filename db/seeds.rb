# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
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