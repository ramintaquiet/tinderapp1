Rails.application.routes.draw do

  
  
  resources :prof2s
  get '/prof2s', to: 'prof2s#index'

  get 'favo/update'
  #get 'cart/index'
  resources :pets
  devise_for :users do 
    resources :prof2s
  end

  
  root 'pets#index'

  get '/cart/:id', to: 'cart#add'
  
  get '/about' => 'page#about'
  get '/help' => 'page#help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
