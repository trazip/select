Rails.application.routes.draw do
  resources :preferences, only: :index
  resources :activities, only: [:new, :create]
  root to: "activities#new"
end
