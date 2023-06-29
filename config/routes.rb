Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount RailsAdmin::Engine => '/myadmin', as: 'rails_admin'
  devise_for :users
 get 'home/index'
 # root 'home#index'
 devise_scope :user do
  root to: "devise/sessions#new"
end
devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
