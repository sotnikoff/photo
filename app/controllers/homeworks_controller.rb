class HomeworksController < ApplicationController
  before_action :authenticate_user!
  def create
    home = Homework.new(homework_params)
    if check_user(homework_params[:user_task_id]) && home.save
      redirect_to user_task_path(homework_params[:user_task_id])
    end
  end

  private

  def check_user(task_id)
    task = UserTask.find(task_id)
    task.user.id == current_user.id
  end

  def homework_params
    params.require(:homework).permit(:user_comment, :user_task_id, pictures: [])
  end
end
