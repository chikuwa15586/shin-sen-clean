class OmikujiService
  RESULTS = [
    {
      name: "神吉",
      image: "zeus.png",
      rarity: "god",
      weight: 8,
      message: "『神の寵愛、ここに極まれり！！』"
    },
    {
      name: "大吉",
      image: "hera.png",
      rarity: "super_rare",
      weight: 13,
      message: "『輝く未来、道は開かれた！』"
    },
    {
      name: "吉",
      image: "poseidon.png",
      rarity: "normal",
      weight: 21,
      message: "『巡る運気、光明の一筋』"
    },
    {
      name: "中吉",
      image: "athena.png",
      rarity: "normal",
      weight: 22,
      message: "『満たされる心、溢れる余裕』"
    },
    {
      name: "小吉",
      image: "apollo.png",
      rarity: "normal",
      weight: 21,
      message: "『日常に潜む、ささやかな奇跡』"
    },
    {
      name: "末吉",
      image: "aphrodite.png",
      rarity: "normal",
      weight: 13,
      message: "『上昇への助走、いざ開始！』"
    },
    {
      name: "凶",
      image: "eris.png",
      rarity: "bad",
      weight: 2,
      message: "『逆境を糧に、不屈の精神』"
    }
  ].freeze


  def self.draw
    total = RESULTS.sum { |r| r[:weight] }
    point = rand(total)

    RESULTS.each do |r|
      point -= r[:weight]
      return r if point < 0
    end

    RESULTS.last # 万が一の保険
  end
end
