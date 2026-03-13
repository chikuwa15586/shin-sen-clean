class OmikujisController < ApplicationController
  before_action :authenticate_user!

  def draw
    today_result = current_user.omikuji_results
                               .where(created_at: Time.zone.today.all_day)
                               .first

    if today_result
      redirect_to result_omikuji_path
    else
      fortune = OmikujiService.draw  # 確率抽選

      current_user.omikuji_results.create!(  # DB保存
        fortune: fortune
      )

      redirect_to result_omikuji_path
    end
  end

  def result
    @result = current_user.omikuji_results
                          .where(created_at: Time.zone.today.all_day)
                          .first

    unless @result
      redirect_to root_path, alert: "まだ神籤を引いていません"
    end
  end

  def history
    @results = current_user.omikuji_results
                           .order(created_at: :desc)
  end
end
