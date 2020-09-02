Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "profile", to: "pages#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :skills do
    resources :experiences, only: [:index, :create]
    resources :bookings, only: [:create] do
      get "update_status", to: 'bookings#update_status'
    end
  end
  resources :experiences, only: [:edit, :update]
  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  resources :chatrooms, only: [:index, :show, :create] do
    resources :messages, only: [:create]
  end
end
