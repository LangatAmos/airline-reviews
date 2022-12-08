Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :destroy]
  resources :airlines, param: :id, only: [:index, :show, :create, :update, :destroy]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
