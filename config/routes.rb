Rails.application.routes.draw do
  get 'comments/index'
  # resources :posts
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: "home#index"
  get "/posts", to: "posts#index"


end

