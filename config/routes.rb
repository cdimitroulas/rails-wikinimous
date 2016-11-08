Rails.application.routes.draw do

  # Routes for navigating the articles and CRUD
  resources :articles
  root to: "articles#index"


  # Routes for signup
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
end
