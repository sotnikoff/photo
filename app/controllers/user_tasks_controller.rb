class UserTasksController < ApplicationController
  def show
    @user_task = UserTask.find(params[:id])
  end
end
