Rails.application.routes.draw do


  resources :rooms, only: [:index, :show]
  resources :messages, only: [:index, :create]
  resources :users, only: [:index, :create, :show, :update]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#show'
  post '/rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
