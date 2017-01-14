Rails.application.routes.draw do
  resources :products, only: [:index]
  resources :login, only: [:index, :create]
  resources :login_and_register, only: [:index]
  resources :register, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
