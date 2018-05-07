require 'rails_helper'

RSpec.describe Homework, type: :model do
  let(:user_task) { create :user_task }
  it 'is valid when all attributes are provided' do
    homework = Homework.new(user_comment: 'User comment',
                            mentor_review: 'Mentor review', user_task: user_task, status: 'new')
    expect(homework).to be_valid
  end

  it 'is not valid when user_task is missing' do
    homework = Homework.new(user_comment: 'User comment',
                            mentor_review: 'Mentor review', status: 'new')
    expect(homework).not_to be_valid
  end
end
