class OmikujiResult < ApplicationRecord
  belongs_to :user

  FORTUNES = ["大吉", "中吉", "小吉", "吉", "末吉", "凶", "大凶"]

  def self.fortune_draw
    FORTUNES.sample
  end
end
