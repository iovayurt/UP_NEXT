Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :restaurants, only: [ :index, :show, :new, :create, :destroy ] do
    resources :orders, only: [ :create, :new ]
  end
  resources :orders, only: [:destroy]
end
