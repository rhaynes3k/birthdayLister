Rails.application.routes.draw do
  resources :person_bdays
  #get 'login/new'
  resources :users
  get '/login', to: 'login#new'
  post '/logout' => 'login#logout'
  post '/member', to: 'login#create', as: 'member'
  get '/index', to: 'users#index'
  root 'application#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
