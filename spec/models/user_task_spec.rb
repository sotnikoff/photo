require 'rails_helper'

RSpec.describe UserTask, type: :model do
  let(:user) { create :user }
  let(:task) { create :task }
  let(:mentor) { create :mentor }

  it 'is valid if all attributes are provided' do
    user_task = UserTask.new(user: user, task: task, done: true, mentor: mentor)
    expect(user_task).to be_valid
  end

  it 'is valid if done parameter is missing' do
    user_task = UserTask.new(user: user, task: task, mentor: mentor)
    expect(user_task).to be_valid
  end

  it 'is not valid if mentor is missing' do
    user_task = UserTask.new(user: user, task: task, done: true)
    expect(user_task).not_to be_valid
  end
end
