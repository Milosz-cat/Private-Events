Rails.application.routes.draw do
  get "users/show"
  devise_for :users

  resources :events, only: [ :index, :new, :create ]
  root "events#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
