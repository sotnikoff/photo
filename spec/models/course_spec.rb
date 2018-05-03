require 'rails_helper'

RSpec.describe Course, type: :model do
  before(:each) do
    @course_category = CourseCategory.create(title: 'Hello', description: 'Test')
  end

  it 'is valid when all attributes are provided' do
    course = Course.new(title: 'Hello', description: 'Test', course_category: @course_category)
    expect(course).to be_valid
  end

  it 'is not valid when course category is missing' do
    course = Course.new(title: 'Hello', description: 'Test')
    expect(course).not_to be_valid
  end

  it 'is not valid no attributes are provided' do
    course = Course.new
    expect(course).not_to be_valid
  end
end
