Rails.application.routes.draw do
  root 'pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :managers do
    root to: 'pages#manager_home'
  end
  resources :jobs
  resources :clients
end
