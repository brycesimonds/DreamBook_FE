Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :sessions
  resources :blogs, only: [:index, :show, :new, :create]
  
  
  get '/dashboard', to: 'users#show'
  get '/auth/google_oauth2/callback', to: 'users#create'
  # get '/auth/google_oauth2/callback', to: 'sessions#create'(depends on design decision)
end
