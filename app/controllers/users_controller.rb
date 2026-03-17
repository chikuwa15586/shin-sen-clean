class UsersController < ApplicationController
  before_action :authenticate_user!

  def stats
    @total_draws = current_user.omikuji_results.count

    @completed_tasks = TaskCompletion
      .joins(:omikuji_result)
      .where(omikuji_results: { user_id: current_user.id }, completed: true)
      .count

    @total_tasks = TaskCompletion
      .joins(:omikuji_result)
      .where(omikuji_results: { user_id: current_user.id })
      .count

    @achievement_rate =
      if @total_tasks > 0
        (@completed_tasks.to_f / @total_tasks * 100).round
      else
        0
      end

    @fortune_counts = current_user.omikuji_results
      .joins(:fortune)
      .group("fortunes.name", "fortunes.rarity")
      .order(Arel.sql("CASE fortunes.rarity
        WHEN 'god' THEN 1
        WHEN 'high' THEN 2
        WHEN 'normal' THEN 3
        ELSE 4 END"))
      .count
  end
end