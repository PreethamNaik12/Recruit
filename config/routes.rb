Rails.application.routes.draw do
<<<<<<< HEAD
  resources :notifications
  resources :options
=======
  get 'credit/Credits_page'
  resources :responses
  resources :credit_answers
  resources :credit_sections
  resources :credit_questions
  get 'answers/new'
  post '/answers/create', to: 'answers#create', as: 'answers_create'
  post '/credit_answers/create', to: 'credit_answers#create', as: 'credit_answers_create'
  post '/questions/create', to: 'questions#create', as: 'questions_create'
>>>>>>> b63d198afd1cd53145b0378f28d233b4563781bf
  resources :questions
  resources :question_types
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
 get 'home/createForm'
 get 'home/formView'
 get 'home/credits'
 # root 'home#index'
 devise_scope :user do
  root to: "devise/sessions#new"
end
devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
