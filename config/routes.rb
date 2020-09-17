Rails.application.routes.draw do
  get 'enrollments/new'
  root 'categories#index'
  get '/contact', to: 'contact#index'
  devise_for :users
  resources :users, only: [:show, :update]
<<<<<<< HEAD
  resources :missions, except: [:edit, :update]
  
=======
  resources :missions, except: [:edit]
  resources :enrollments, only: [:create, :show]
>>>>>>> 7c0f168ccc21be23b57a1ba0f83844ffee19b7b9
  namespace :admin do
      root 'admin#index'
      resources :dashboard, only:[:show]
 end
end