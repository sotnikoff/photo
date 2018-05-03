require 'rails_helper'

RSpec.describe CourseCategory, type: :model do
  it 'is valid with proper attributes' do
    category = CourseCategory.new(title: 'Hello world', description: 'Test description')
    expect(category).to be_valid
  end

  it 'is not valid without title' do
    category = CourseCategory.new(description: 'Test description')
    expect(category).not_to be_valid
  end

  it 'is not valid without description' do
    category = CourseCategory.new(title: 'Hello world')
    expect(category).not_to be_valid
  end

  it 'is not valid without required attributes' do
    category = CourseCategory.new
    expect(category).not_to be_valid
  end
end
