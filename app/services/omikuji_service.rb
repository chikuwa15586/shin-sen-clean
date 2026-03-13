class OmikujiService
  def self.draw
    fortunes = Fortune.all

    total = fortunes.sum(&:probability)
    point = rand(total)

    fortunes.each do |fortune|
      point -= fortune.probability
      return fortune if point < 0
    end

    fortunes.last
  end
end