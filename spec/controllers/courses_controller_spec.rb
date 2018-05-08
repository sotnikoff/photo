require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  context 'without course' do
    describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to be_successful
      end
    end
  end

  context 'with course' do
    before(:each) do
      @course = create :course
    end

    describe 'GET #show' do
      it 'returns http success' do
        get :show, params: { id: @course.id }
        expect(response).to be_successful
      end
    end
  end
end
