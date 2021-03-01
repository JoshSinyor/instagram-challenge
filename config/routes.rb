# frozen_string_literal: true

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: 'main#index'

  get 'about', to: 'about#index', as: :about

  get 'sign_up', to: 'register#new'
  post 'sign_up', to: 'register#create'

  # get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'sign_out', to: 'sessions#destroy'
end
