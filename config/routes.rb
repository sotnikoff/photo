Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :mentors
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  root 'pages#index'
  get '/my', to: 'pages#my', as: 'my'
  resources :course_categories, only: %i[index show]
  resources :courses, only: %i[index show]
  resources :homeworks, only: %i[create]
  scope 'my' do
    resources :user_tasks, only: %i[show]
  end
end
