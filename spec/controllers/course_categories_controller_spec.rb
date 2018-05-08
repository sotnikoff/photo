require 'rails_helper'

RSpec.describe CourseCategoriesController, type: :controller do
  context 'without course category' do
    describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to be_successful
      end
    end
  end

  context 'with course category' do
    before(:each) do
      @course_category = create :course_category
    end

    describe 'GET #show' do
      it 'returns http success' do
        get :show, params: { id: @course_category.id }
        expect(response).to be_successful
      end
    end
  end
end
