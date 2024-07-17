# frozen_string_literal: true

Rails.application.routes.draw do
  get 'cart_items/new'
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
    resources :carts
    resources :cart_items
  end

  resources :service_offers do
    resources :cart_items
    resources :carts
    resources :users
  end

  resources :cart_items do
    resources :carts
    resources :users
    resources :service_offers
  end

  put 'cart_items/:id/add', to: 'cart_items#add', as: 'add'
  put 'cart_items/:id/remove', to: 'cart_items#remove', as: 'remove'
  put 'cart_items/:id/delete', to: 'cart_items#delete', as: 'delete'

  resources :service_types


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
