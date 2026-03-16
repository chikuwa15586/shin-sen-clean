class OmikujisController < ApplicationController
  before_action :authenticate_user!

  def draw
    today_result = current_user.omikuji_results
                               .where(created_at: Time.zone.today.all_day)
                               .first

    if today_result
      redirect_to root_path
    else
      fortunes = Fortune.all
      pool = fortunes.flat_map { |f| [f] * f.probability }
      fortune = pool.sample

      omikuji_result = current_user.omikuji_results.create!(
        fortune: fortune
      )

      tasks = Task.order("RANDOM()").limit(1)

      tasks.each do |task|
        TaskCompletion.create!(
          task: task,
          omikuji_result: omikuji_result,
          completed: false
        )
      end

      redirect_to result_omikuji_path
    end
  end

  def result
    @result = current_user.omikuji_results
                          .includes(task_completions: :task, fortune: [])
                          .where(created_at: Time.zone.today.all_day)
                          .first

    unless @result
      redirect_to root_path, alert: "まだ神籤を引いていません"
    end
  end

  def history
    @results = current_user.omikuji_results
                           .includes(:fortune)  # N+1問題
                           .order(created_at: :desc)
  end
end
