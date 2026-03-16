class Task < ApplicationRecord
  has_many :task_completions, dependent: :destroy
end
