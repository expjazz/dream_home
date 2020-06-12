# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/show'
  root 'pages#home'

  get 'pages/home'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users, only: [:show]
  resources :properties

  get 'search_property', to: 'pages#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
