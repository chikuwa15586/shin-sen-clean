class TaskCompletion < ApplicationRecord
  belongs_to :task
  belongs_to :omikuji_result
end
