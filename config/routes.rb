Rails.application.routes.draw do
  resources :product_instances, only: [:index, :show, :create, :update, :destroy]
  resources :carts, only: [:index, :show, :create, :update]
  resources :products, only: [:index, :show]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end