Rails.application.routes.draw do
  root 'jobs#index'
  resources :jobs
  resources :clients


end
