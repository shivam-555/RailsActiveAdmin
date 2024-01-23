Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :schools do
    resources :students
    resources :teachers
    # Add resources for other models as needed
  end
end
