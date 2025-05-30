Rails.application.routes.draw do
  devise_for :users

  resources :events, only: [ :index, :show, :new, :create ]
  resources :users, only: [ :show ]
  root "events#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
