Rails.application.routes.draw do
  root 'categories#index'
  get '/contact', to: 'contact#index'
  devise_for :users
  resources :users, only: [:show, :update]
  resources :missions, except: [:edit, :update]
  
  namespace :admin do
      root 'admin#index'
      resources :dashboard, only:[:show]
 end
end