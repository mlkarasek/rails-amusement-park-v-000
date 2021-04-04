Rails.application.routes.draw do
  root 'welcome#home'
  resources :users
  resources :attractions
  resources :rides, :only => [:new, :create]
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
