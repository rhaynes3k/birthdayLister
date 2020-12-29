Rails.application.routes.draw do
  get 'login/new'
  resources :users
  get '/login', to: 'login#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
