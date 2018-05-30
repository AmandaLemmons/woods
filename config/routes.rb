Rails.application.routes.draw do
  get 'contact/new'
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
  root 'pages#home'
  resources :jobs
  resources :clients
  resources :resumes
  resources :contacts, only: [:new, :create]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :managers do
    root to: 'clients#index'
  end

  devise_for :candidates, controllers: { sessions: 'candidates/sessions', registrations: 'candidates/registrations', passwords: 'candidates/passwords'}
  resources :candidates, :only => [:show, :edit]


  get 'about-us' => 'pages#about_us', as: :about_us
  get 'contact-us' => 'contact#contact_us', as: :contact_us
  get 'job-vacancies' => 'jobs#job_vacancies', as: :job_vacancies
  get 'job-details/:id' => 'jobs#job_details', as: :job_details
  get 'live-clients' => 'clients#live_clients', as: :live_clients
  get 'dormant-clients' => 'clients#dormant_clients', as: :dormant_clients
  get 'job-category/:id' => 'jobs#job_category', as: :job_category
  # get 'profile/:id' => 'candidates#candidate_profile', as: :profile
  get 'apply/:id' => 'resumes#apply', as: :apply_for_job
  get 'testimonials' => 'pages#testimonials', as: :testimonials


end
