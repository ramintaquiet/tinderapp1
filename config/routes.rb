Rails.application.routes.draw do

  
  
  get 'extra/one'
  get 'extra/two'
  get 'extra/three'
  get 'nolog/update'
  get 'profile/update'
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
  
    
  get '/home' => 'page#home'
  get '/about' => 'page#about'
  get '/help' => 'page#help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
