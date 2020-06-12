# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/show'
  root 'pages#home'

  get 'pages/home'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users, only: [:show]
  resources :properties
  post 'user_likes_create', to: 'users#likes_create'
  delete 'user_likes_destroy', to: 'users#likes_destroy'
  get 'search_property', to: 'pages#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
