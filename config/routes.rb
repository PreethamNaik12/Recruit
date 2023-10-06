Rails.application.routes.draw do
  get 'credit/Credits_page'
  resources :responses
  resources :credit_answers
  resources :credit_sections
  resources :credit_questions
  get 'answers/new'
  post '/answers/create', to: 'answers#create', as: 'answers_create'
  post '/credit_answers/create', to: 'credit_answers#create', as: 'credit_answers_create'
  resources :questions
  resources :forms
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount RailsAdmin::Engine => '/myadmin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  get 'home/form'
  get 'home/form2'
  get 'home/form3'
  get 'home/form4'
  get 'home/myApplications'
  get 'home/adminPanel'
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
