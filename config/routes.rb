Rails.application.routes.draw do
  root 'categories#index'
  devise_for :users
  resources :users, only: [:show]
  resources :missions, only:[:new, :create, :show]
  namespace :admin do
  	root 'admin#index'
 end
end