Rails.application.routes.draw do
  root 'users#index'
  get 'users/index', to: 'users#index'
  post '/', to: 'users#index'
  get 'users/:id' , to: 'users#show', as: "user"
end
