Rails.application.routes.draw do

 
  
  resources :appointments
  resources :annonces do
    resources :comments
  end

 resources :doctors do
    member do
      get 'appointment', to: 'doctors#appointment', as: :appointment
      post 'appointment', to: 'doctors#create_appointment'
    end
  end 
 
  get 'profile/index'
  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'home/help'
  
  
  
  
end
