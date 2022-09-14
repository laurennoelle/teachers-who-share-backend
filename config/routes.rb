Rails.application.routes.draw do
  resources :saved_items
  resources :resources
  resources :users, only: [:create, :index]

  post '/login', to: 'auth#create'
  get '/me', to: 'users#show'
  # post: "/signup", to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
