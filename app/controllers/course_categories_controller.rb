class CourseCategoriesController < ApplicationController
  def index
    @course_categories = CourseCategory.all
  end

  def show
    @course_category = CourseCategory.find(params[:id])
  end
end
