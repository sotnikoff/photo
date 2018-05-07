require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:course) { create :course }

  it 'is valid when all attributes are provided' do
    task = Task.new(title: 'Title', description: 'Description', body: 'Body', course: course)
    expect(task).to be_valid
  end

  it 'fails when course is missing' do
    task = Task.new(title: 'Title', description: 'Description', body: 'Body')
    expect(task).not_to be_valid
  end
end
