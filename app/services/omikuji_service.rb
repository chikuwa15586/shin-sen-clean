class OmikujiService
  RESULTS = [
    { name: "神吉", image: "zeus.png",      rarity: "god",        weight: 1 },
    { name: "大吉", image: "hera.png",      rarity: "super_rare", weight: 1 },
    { name: "吉",   image: "poseidon.png",  rarity: "normal",     weight: 1 },
    { name: "中吉", image: "athena.png",    rarity: "normal",     weight: 2 },
    { name: "小吉", image: "apollo.png",    rarity: "normal",     weight: 90 },
    { name: "末吉", image: "aphrodite.png", rarity: "normal",     weight: 1 },
    { name: "凶",   image: "eris.png",      rarity: "bad",        weight: 3 }
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
