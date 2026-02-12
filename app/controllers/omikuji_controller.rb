class OmikujiController < ApplicationController
  before_action :authenticate_user!

  def draw
    today_result = current_user.omikuji_results
                               .where(created_at: Time.zone.today.all_day)
                               .first

    if today_result
      # すでに今日引いている
      redirect_to result_omikuji_path
    else
      # 今日まだなら抽選
      result = OmikujiService.draw

      current_user.omikuji_results.create!(
        fortune: @result.fortune,
        image: @result.image
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
end
