class UserTasksController < ApplicationController
  def show
    @user_task = UserTask.find(params[:id])
    @homework = Homework.new(user_task: @user_task)
  end
end
