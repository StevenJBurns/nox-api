Rails.application.routes.draw do
  resources :shopping_carts
  resources :orders
  resources :users
  resources :products
  resources :testimonials
  resources :services

  resources :logins

  #get 'charges/new'
  #get 'charges/create'

  resources :charges, only: [:new, :create]
  #devise_for :users
  resources :posts
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
