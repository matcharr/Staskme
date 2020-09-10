Rails.application.routes.draw do
  devise_for :users
  resources :missions, only:[:new, :create] 
end
