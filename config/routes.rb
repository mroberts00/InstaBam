Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :follows, only: [ :create ]
  resources :relates, only: [ :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
