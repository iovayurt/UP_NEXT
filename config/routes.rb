Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :restaurants, only: [ :index, :show, :new, :create, :destroy ] do
    resources :order_items, only: [ :create ]
  end
  resources :orders, only: [:destroy]
  resource :dashboard, only: [:show]
end
