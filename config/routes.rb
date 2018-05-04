Rails.application.routes.draw do
  devise_for :mentors
  root 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :course_categories, only: %i(index show)
end
