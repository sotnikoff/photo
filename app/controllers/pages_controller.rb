class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[my]
  before_action :user_tasks, only: %i[my]
  def index
    @categories = CourseCategory.all
  end

  def my; end

  private

  def user_tasks
    @user_tasks = UserTask.my_tasks(current_user)
  end
end
