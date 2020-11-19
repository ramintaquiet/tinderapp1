Rails.application.routes.draw do

  
  
  get 'favo/update'
  #get 'cart/index'
  resources :pets
  devise_for :users

  get '/cart', to: 'cart#index'
  root 'pets#index'

  get '/cart/:id', to: 'cart#add'
  
  get '/about' => 'page#about'
  get '/help' => 'page#help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
