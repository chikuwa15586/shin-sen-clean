class OmikujiResult < ApplicationRecord
  belongs_to :user
  belongs_to :fortune
  has_many :task_completions, dependent: :destroy
end
