Rails.application.routes.draw do
  devise_for :users
  root 'books#index'

  resources :books do
    resources :comments
  end

  get "like", to: "books#like"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
