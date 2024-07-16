# frozen_string_literal: true

Rails.application.routes.draw do
  get 'carts/index'
  get 'carts/show'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  get 'pages/about'

  root 'pages#index'

  resources :users do
    resources :service_offers
  end

  resources :service_offers

  resources :service_types


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
