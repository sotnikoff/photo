Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :mentors
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  root 'pages#index'
  get '/my', to: 'pages#my'
  resources :course_categories, only: %i(index show)
  scope 'my' do
    resources :user_tasks, only: %i(show)
  end
end
