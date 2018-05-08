require 'rails_helper'

RSpec.describe HomeworksController, type: :controller do
  before(:each) do
    @user_task = create :user_task
  end

  describe 'POST #create' do
    it 'returns http success' do
      post :create, params: { homework_user_comment: 'User comment',
                              homework_user_task_id: @user_task.id
      }
      expect(response).to have_http_status(:found)
    end
  end
end
