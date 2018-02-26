Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :users do 
    resources :onboarding, only: [:index]
    resources :artworks
    resources :portfolio, only: [:index]
    resources :posts
  end
  
  
  post '/onboarding', as: 'onboarding', to: 'onboarding#create'
  get '/login', as: 'login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :conversations do
    resources :messages
  end
  
end
