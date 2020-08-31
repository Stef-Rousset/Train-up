Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile", to: "pages#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :skills do
    resources :experiences, only: [:index, :create, :edit, :update]
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy]

  resources :bookings do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: [:create]
  end
end
