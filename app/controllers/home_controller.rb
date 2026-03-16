class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @today_result = current_user.omikuji_results
                          .includes(:fortune, task_completions: :task)
                          .where(created_at: Time.zone.today.all_day)
                          .first
  end
end
