Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :artists

  

  get '/login', as: 'login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
