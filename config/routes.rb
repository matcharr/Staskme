Rails.application.routes.draw do
  get 'enrollments/new'
  root 'categories#index'
  get '/contact', to: 'contact#index'
  devise_for :users
  resources :users, only: [:show, :update]
  resources :missions, except: [:edit]
  resources :enrollments, only: [:create, :show]
  namespace :admin do
      root 'admin#index'
    end
end