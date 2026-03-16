class TaskCompletionsController < ApplicationController
  before_action :authenticate_user!

  def update
    task_completion = TaskCompletion.find(params[:id])
    task_completion.update(
      completed: params[:task_completion][:completed]
    )

    redirect_back fallback_location: home_path
  end

  private

  def task_completion_params
    params.require(:task_completion).permit(:completed)
  end
end