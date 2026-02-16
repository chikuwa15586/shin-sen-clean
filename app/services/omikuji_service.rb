class OmikujiService
  RESULTS = [
    { name: "神吉", image: "zeus.png",      rarity: "god",        weight: 5 },
    { name: "大吉", image: "hera.png",      rarity: "super_rare", weight: 10 },
    { name: "吉",   image: "poseidon.png",  rarity: "normal",     weight: 15 },
    { name: "中吉", image: "athena.png",    rarity: "normal",     weight: 25 },
    { name: "小吉", image: "apollo.png",    rarity: "normal",     weight: 25 },
    { name: "末吉", image: "aphrodite.png", rarity: "normal",     weight: 15 },
    { name: "凶",   image: "eris.png",      rarity: "bad",        weight: 5 }
  ].freeze

  def self.draw
    total = RESULTS.sum { |r| r[:weight] }
    point = rand(total)

    RESULTS.each do |r|
      point -= r[:weight]
      return r if point < 0
    end

    RESULTS.last # 念のため保険
  end
end
