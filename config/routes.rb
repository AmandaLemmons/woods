Rails.application.routes.draw do
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
  root 'pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :managers do
    root to: 'pages#manager_home'
  end

  devise_for :candidates, controllers: {
    sessions: 'candidates/sessions'
  }
  resources :jobs
  resources :clients
  resources :resumes, only: [:index, :new, :create, :destroy]


  get 'about-us' => 'pages#about_us', as: :about_us
  get 'contact-us' => 'pages#contact_us', as: :contact_us
  get 'job-vacancies' => 'jobs#job_vacancies', as: :job_vacancies
  get 'job-details/:id' => 'jobs#job_details', as: :job_details


end
