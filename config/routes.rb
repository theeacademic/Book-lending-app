Rails.application.routes.draw do
  resources :books
  resources :borrowers, only: [:index, :show]
  resources :lending_histories, only: [:create, :update]

  root 'books#index'
end

