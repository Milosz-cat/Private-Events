Rails.application.routes.draw do
  devise_for :users

  resources :events, only: [ :index ]
  root "events#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
