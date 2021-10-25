Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  post 'guest', to: 'profile#guest_user', as: 'guest_user'
  post 'guestdoctor', to: 'profile#guest_doctor', as: 'guest_doctor'
  post 'guestadmin', to: 'profile#guest_admin', as: 'guest_admin'
 

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
  devise_for :users, controllers:{
    sessions: 'sessions'
  
  } 

  root 'home#index'
  
  get 'home/index'
  get 'home/help'
  
  
  
  
end
