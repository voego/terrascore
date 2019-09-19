Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories
  resources :answers
  resources :users, only: :show
  resources :donations, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
