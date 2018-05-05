class HomeworksController < ApplicationController
  before_action :authenticate_user!
  def create
    home = Homework.new(user_comment: params[:homework_user_comment],
                        user_task_id: params[:homework_user_task_id])
    if check_user(params[:homework_user_task_id]) && home.save
      redirect_to root_path
    end
  end

  private

  def check_user(task_id)
    task = UserTask.find(task_id)
    task.user.id == current_user.id
  end
end
