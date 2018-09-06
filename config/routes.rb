Rails.application.routes.draw do
  root 'welcome#home'

  resources :users, only: [:new, :create, :show]

  resources :recipes

  resources :ingredients

  get '/signin', to: 'sessions#new'

  post '/signin', to: 'sessions#create'

  delete "/signout", to: "sessions#destroy"
end
