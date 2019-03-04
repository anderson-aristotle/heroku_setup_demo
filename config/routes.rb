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
  get '/books/:id' => 'books#show'
  post '/books' => 'books#index

# patient routes
resources :patients, except: %i[new edit]
  # get '/patients' => 'patient#index'
  # get '/patients' => 'patients#post'
  # post '/patients' => 'patients#create'
  # patch '/patients/:id' => 'patients#update'

# Ingredients resource routes'
resources :ingredients, except: %i[new edit]
  # get '/ingredients'=> 'ingredients#index'
  # get '/ingredients/:id'=> 'ingredients#show'
  # post '/ingredients' => 'ingredients#create'
  # patch '/ingredients/:id' => 'ingredients#updated'
  # delete '/books/:id' => 'books#destroy'

end
