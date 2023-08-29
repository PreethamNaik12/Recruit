Rails.application.routes.draw do
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
 # root 'home#index'
 devise_scope :user do
  root to: "devise/sessions#new"
end
devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
