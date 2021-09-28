Rails.application.routes.draw do

  root "screen#index" 
  resources :teams
  resources :matches
  resources :screen, only: [:index]

end
