Rails.application.routes.draw do
  devise_for :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'friends#index' 
  get 'contact', to:'home#contact'
  post "request_contact", to: "home#request_contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home_index', to:'home#index'


end
