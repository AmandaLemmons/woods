Rails.application.routes.draw do
  devise_for :managers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'jobs#index'
  resources :jobs
  resources :clients
end
