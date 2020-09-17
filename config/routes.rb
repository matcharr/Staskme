Rails.application.routes.draw do
  get 'enrollments/new'
  root 'categories#index'
  devise_for :users
  resources :users, only: [:show, :update]
  resources :missions, except: [:edit, :update]
  resources :enrollments, only: [:create, :show]
  namespace :admin do
      root 'admin#index'
      resources :dashboard, only:[:show]
 end
end