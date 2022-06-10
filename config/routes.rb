Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]    In this line we are using all of the CRUD action so we can just simply write like below
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
