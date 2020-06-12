# frozen_string_literal: true

Rails.application.routes.draw do
  get 'property/new'
  get 'property/create'
  get 'property/update'
  get 'property/destroy'
  get 'property/show'
  get 'pages/home'
  root 'pages#home'
  get 'search_property', to: 'pages#search'
  devise_for :users
  resources :properties
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
