# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

# Books resource routes
# router has request to GET /books - index action is performed for all GET requests
  get '/books' => 'books#index'

  # Patients resourse routes
  get '/patients' => 'patients#index'


  # Ingredients respurce routes
  get '/ingredients' => 'ingredients#index'
end
