Rails.application.routes.draw do

  

  # devise_for :admins
    
  # resources :reciepts do
  # 	collection do
  #     match 'search' => 'reciepts#search', via: [:get, :post], as: :search
  #   end
  # end
 
  resources :reciepts 


  devise_for :users

  resources :users_admin, :controller => 'users'
 
 # resources :admins, except: :create

 # post 'create_user' => 'users#create', as: :create_user


  resources :reports do
      collection do
        match 'search' => 'reports#index', via: [:get, :post], as: :search
      end
    end
     
   


  root 'dashboard#index'
  # get 'dashboard/reciept'
  # get 'dashboard/invoice'

   


end
