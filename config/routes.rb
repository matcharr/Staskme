Rails.application.routes.draw do
  root 'categories#index'
  devise_for :users
  resources :users, only: [:show, :update]
  resources :missions, only:[:new, :create, :show]
  namespace :admin do
    root 'admin#index'
    resources :dashboard, only:[:show]
	end
end