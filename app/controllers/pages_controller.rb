class PagesController < ApplicationController
  def index
    @categories = CourseCategory.all
  end
end
