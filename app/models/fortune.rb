class Fortune < ApplicationRecord
  has_many :omikuji_results, dependent: :destroy
end
