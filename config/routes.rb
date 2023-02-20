Rails.application.routes.draw do
  resources :preferences, only: :index
  resources :activities, only: [:index, :new, :create]
  root to: "activities#index"
end
