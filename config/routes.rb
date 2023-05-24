Rails.application.routes.draw do
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "home#index" 
  # resources :products
  # resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories do 
    resources :products
  end 

  resources :products do 
    resources :orders
  end 

  get '/categories/:category_id/products' , to: 'products#show', as: 'products_show'
  get '/products/:products_id/orders' , to: 'orders#show', as: 'orders_show'

end



 
