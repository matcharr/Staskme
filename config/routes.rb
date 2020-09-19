Rails.application.routes.draw do
  root 'categories#index'
  devise_for :users
  resources :users, only: [:show, :update, :index]
  resources :missions, except: [:edit, :show]
  resources :enrollments, only: [:create, :show]
  namespace :admin do
    root 'admin#index'
    resources :admin, only: [:show]
  end
end