# app/services/omikuji_service.rb
class OmikujiService
  # 運勢と対応キャラ、レア度ウェイト
  RESULTS = [
    { name: "神吉", image: "zeus.png", weight: 5 },      # 超レア
    { name: "大吉", image: "hera.png", weight: 10 },
    { name: "吉",   image: "poseidon.png", weight: 15 },
    { name: "中吉", image: "athena.png", weight: 25 },
    { name: "小吉", image: "apollo.png", weight: 25 },
    { name: "末吉", image: "aphrodite.png", weight: 15 },
    { name: "凶",   image: "eris.png", weight: 5 }
  ].freeze

  # 確率付きでランダム抽選
  def self.draw
    total = RESULTS.sum { |r| r[:weight] }
    point = rand(total)

    RESULTS.each do |r|
      point -= r[:weight]
      return r if point < 0
    end
  end
end
