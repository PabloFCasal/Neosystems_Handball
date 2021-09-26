Rails.application.routes.draw do

  root "teams#index" 
  resources :teams
  resources :matches
  resources :screen, only: [:index]

end
