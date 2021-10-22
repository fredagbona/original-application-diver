Rails.application.routes.draw do

  resources :annonces
 resources :doctors
  get 'profile/index'
  devise_for :users
  root 'home#index'
  get 'home/index'
  
  
  
end
