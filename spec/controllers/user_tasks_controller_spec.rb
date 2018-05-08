require 'rails_helper'

RSpec.describe UserTasksController, type: :controller do
  let(:user_task) { create :user_task }

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { id: user_task.id }
      expect(response).to be_successful
    end
  end
end
