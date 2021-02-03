Rails.application.routes.draw do
  devise_for :users
    #get 'users/signup', to: 'user#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#new'
  resources :users
  resources :events
  resources :attendances
end
