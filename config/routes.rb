Rails.application.routes.draw do
  # devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:create]
      resources :vehicles, only: [:index, :show, :create]
      resources :bookings, only: [:create]
      resources :sessions, only: [:create]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
